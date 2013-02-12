Fulcrum = {}  if typeof Fulcrum is "undefined"
Fulcrum.StoryView = Fulcrum.FormView.extend(
  template: JST["templates/story"]
  tagName: "div"
  initialize: ->
    _.bindAll this, "render", "highlight", "moveColumn", "setClassName", "transition", "estimate", "disableForm", "renderNotes", "renderNotesCollection", "addEmptyNote"
    
    # Rerender on any relevant change to the views story
    @model.bind "change", @render
    @model.bind "change:title", @highlight
    @model.bind "change:description", @highlight
    @model.bind "change:column", @highlight
    @model.bind "change:state", @highlight
    @model.bind "change:position", @highlight
    @model.bind "change:estimate", @highlight
    @model.bind "change:story_type", @highlight
    @model.bind "change:column", @moveColumn
    @model.bind "change:estimate", @setClassName
    @model.bind "change:state", @setClassName
    @model.bind "change:notes", @addEmptyNote
    @model.bind "change:notes", @renderNotesCollection
    @model.bind "render", @hoverBox()
    
    # Supply the model with a reference to it's own view object, so it can
    # remove itself from the page when destroy() gets called.
    @model.view = this
    @id = @el.id = @model.id  if @model.id
    
    # Set up CSS classes for the view
    @setClassName()
    
    # Add an empty note to the collection
    @addEmptyNote()

  events:
    "click a.expand": "startEdit"
    "click a.collapse": "saveEdit"
    "click #submit": "saveEdit"
    "click #cancel": "cancelEdit"
    "click .transition": "transition"
    "click input.estimate": "estimate"
    "click #destroy": "clear"
    "click #edit-description": "editDescription"
    sortupdate: "sortUpdate"

  
  # Triggered whenever a story is dropped to a new position
  sortUpdate: (ev, ui) ->
    
    # The target element, i.e. the StoryView.el element
    target = $(ev.target)
    
    # Initially, try and get the id's of the previous and / or next stories
    # by just searching up above and below in the DOM of the column position
    # the story was dropped on.  The case where the column is empty is
    # handled below.
    previous_story_id = target.prev(".story").attr("id")
    next_story_id = target.next(".story").attr("id")
    
    # Set the story state if drop column is chilly_bin or backlog
    column = target.parent().attr("id")
    if column is "backlog" or (column is "in_progress" and @model.get("state") is "unscheduled")
      @model.set state: "unstarted"
    else @model.set state: "unscheduled"  if column is "chilly_bin"
    
    # If both of these are unset, the story has been dropped on an empty
    # column, which will be either the backlog or the chilly bin as these
    # are the only columns that can receive drops from other columns.
    if typeof previous_story_id is "undefined" and typeof next_story_id is "undefined"
      beforeSearchColumns = @model.collection.project.columnsBefore("#" + column)
      afterSearchColumns = @model.collection.project.columnsAfter("#" + column)
      previousStory = _.last(@model.collection.columns(beforeSearchColumns))
      nextStory = _.first(@model.collection.columns(afterSearchColumns))
      previous_story_id = previousStory.id  unless typeof previousStory is "undefined"
      next_story_id = nextStory.id  unless typeof nextStory is "undefined"
    unless typeof previous_story_id is "undefined"
      @model.moveAfter previous_story_id
    else unless typeof next_story_id is "undefined"
      @model.moveBefore next_story_id
    else
      
      # The only possible scenario that we should reach this point under
      # is if there is only one story in the collection, so there is no
      # previous or next story.  If this is not the case then something
      # has gone wrong.
      throw "Unable to determine previous or next story id for dropped story"  unless @model.collection.length is 1
    @model.save()

  transition: (ev) ->
    
    # The name of the function that needs to be called on the model is the
    # value of the form button that was clicked.
    transitionEvent = ev.target.value
    @saveInProgress = true
    @render()
    @model[transitionEvent] silent: true
    that = this
    @model.save null,
      success: (model, response) ->
        that.saveInProgress = false
        that.render()

      error: (model, response) ->
        json = $.parseJSON(response.responseText)
        window.projectView.notice
          title: I18n.t("save error")
          text: model.errorMessages()

        that.saveInProgress = false
        that.render()


  estimate: (ev) ->
    @saveInProgress = true
    @render()
    @model.set estimate: ev.target.value
    that = this
    @model.save null,
      success: (model, response) ->
        that.saveInProgress = false
        that.render()

      error: (model, response) ->
        json = $.parseJSON(response.responseText)
        window.projectView.notice
          title: I18n.t("save error")
          text: model.errorMessages()

        that.saveInProgress = false
        that.render()


  
  # Move the story to a new column
  moveColumn: ->
    @$el.appendTo @model.get("column")

  startEdit: ->
    @model.set
      editing: true
      editingDescription: false


  cancelEdit: ->
    @model.set editing: false
    
    # If the model was edited, but the edits were deemed invalid by the
    # server, the local copy of the model will still be invalid and have
    # errors set on it after cancel.  So, reload it from the server, which
    # will return the attributes to their true state.
    if @model.hasErrors()
      @model.unset "errors"
      @model.fetch()
    
    # If this is a new story and cancel is clicked, the story and view
    # should be removed.
    @model.clear()  if @model.isNew()

  saveEdit: ->
    @disableForm()
    
    # Call this here to ensure the story gets it's accepted_at date set
    # before the story collection callbacks are run if required.  The
    # collection callbacks need this to be set to know which iteration to
    # put an accepted story in.
    @model.setAcceptedAt()
    that = this
    @model.save null,
      success: (model, response) ->
        that.model.set editing: false
        that.enableForm()

      error: (model, response) ->
        json = $.parseJSON(response.responseText)
        model.set
          editing: true
          errors: json.story.errors

        window.projectView.notice
          title: I18n.t("Save error")
          text: model.errorMessages()

        that.enableForm()


  
  # Delete the story and remove it's view element
  clear: ->
    @model.clear()

  editDescription: ->
    @model.set editingDescription: true
    @render()

  
  # Visually highlight the story if an external change happens
  highlight: ->
    
    # Workaround for http://bugs.jqueryui.com/ticket/5506
    @$el.effect "highlight", {}, 3000  if @$el.is(":visible")  unless @model.get("editing")

  render: ->
    if @model.get("editing") is true
      @$el.empty()
      @$el.addClass "editing"
      @$el.append @makeFormControl((div) ->
        unless @model.isNew()
          $(div).append @make("a",
            class: "collapse icon icon-chevron-down"
          )
        $(div).append @textField("title",
          placeholder: I18n.t("story title")
        )
      )
      @$el.append @makeFormControl((div) ->
        $(div).append @submit()
        $(div).append @destroy()  unless @model.isNew()
        $(div).append @cancel()
      )
      @$el.append @makeFormControl(
        name: "estimate"
        label: true
        control: @select("estimate", @model.point_values(),
          blank: "No estimate"
        )
      )
      @$el.append @makeFormControl(
        name: "story_type"
        label: true
        control: @select("story_type", ["feature", "chore", "bug", "release"])
      )
      @$el.append @makeFormControl(
        name: "state"
        label: true
        control: @select("state", ["unscheduled", "unstarted", "started", "finished", "delivered", "accepted", "rejected"])
      )
      @$el.append @makeFormControl(
        name: "requested_by_id"
        label: true
        control: @select("requested_by_id", @model.collection.project.users.forSelect(),
          blank: "---"
        )
      )
      @$el.append @makeFormControl(
        name: "owned_by_id"
        label: true
        control: @select("owned_by_id", @model.collection.project.users.forSelect(),
          blank: "---"
        )
      )
      @$el.append @makeFormControl(
        name: "labels"
        label: true
        control: @textField("labels")
      )
      @$el.append @makeFormControl((div) ->
        $(div).before @label("description", "Description")
        if @model.isNew() or @model.get("editingDescription")
          $(div).append @textArea("description")
        else
          description = @make("div")
          $(description).addClass "description"
          $(description).html window.md.makeHtml(@model.escape("description"))
          $(div).append description
          $(description).after "<input id=\"edit-description\" type=\"button\" class=\"btn btn-mini\" value=\"Edit\"/>"
      )
      @initTags()
      @renderNotes()
    else
      @$el.removeClass "editing"
      @$el.html @template(
        story: @model
        view: this
      )
    @hoverBox()
    this

  setClassName: ->
    className = ["story", "form-horizontal", @model.get("story_type"), @model.get("state")].join(" ")
    className += " unestimated"  if @model.estimable() and not @model.estimated()
    @className = @el.className = className
    this

  saveInProgress: false
  disableForm: ->
    @$el.find("input,select,textarea").attr "disabled", "disabled"
    @$el.find("a.collapse,a.expand").removeClass(/icon-/).addClass "icon-throbber"

  enableForm: ->
    @$el.find("a.collapse").removeClass(/icon-/).addClass "icon-chevron-down"

  initTags: ->
    model = @model
    $input = @$el.find("input[name='labels']")
    $input.tagit availableTags: model.collection.labels
    
    # Manually bind labels for now
    $input.bind "change", ->
      model.set labels: $(this).val()


  renderNotes: ->
    if @model.notes.length > 0
      el = @$el
      el.append "<hr/>"
      el.append "<h3>" + I18n.t("notes") + "</h3>"
      el.append "<div class=\"notelist\"/>"
      @renderNotesCollection()

  renderNotesCollection: ->
    notelist = @$("div.notelist")
    notelist.html ""
    @addEmptyNote()
    @model.notes.each (note) ->
      view = undefined
      if note.isNew()
        view = new Fulcrum.NoteForm(model: note)
      else
        view = new Fulcrum.NoteView(model: note)
      notelist.append view.render().el


  addEmptyNote: ->
    
    # Don't add an empty note if the story is unsaved.
    return  if @model.isNew()
    
    # Don't add an empty note if the notes collection already has a trailing
    # new Note.
    last = @model.notes.last()
    return  if last and last.isNew()
    
    # Add a new unsaved note to the collection.  This will be rendered
    # as a form which will allow the user to add a new note to the story.
    @model.notes.add()
    @$el.find("a.collapse,a.expand").removeClass(/icon-/).addClass "icon-throbber"

  
  # FIXME Move to separate view
  hoverBox: ->
    view = this
    @$el.find(".popover-activate").popover
      title: ->
        view.model.get "title"

      content: ->
        JST["templates/story_hover"] story: view.model

      
      # A small delay to stop the popovers triggering whenever the mouse is
      # moving around
      delayIn: 200
      placement: view.hoverBoxPlacement
      html: true
      live: true


  hoverBoxPlacement: (box, trigger) ->
    
    # Gets called from a jQuery context, so this is set to the element that
    # the popover is bound to.
    position = $(trigger).position()
    windowWidth = $(window).width()
    
    # If the element is to the right of the vertical half way line in the
    # viewport, position the popover on the left.
    return "left"  if position.left > (windowWidth / 2)
    "right"

  initTags: ->
    model = @model
    $input = @$el.find("input[name='labels']")
    $input.tagit availableTags: model.collection.labels
    
    # Manually bind labels for now
    $input.bind "change", ->
      model.set labels: $(this).val()


  setFocus: ->
    @$("input").first().focus()  if @model.get("editing") is true

  makeFormControl: (content) ->
    div = @make("div",
      class: "control-group"
    )
    controlWrapper = @make("div",
      class: "controls"
    )
    $div = $(div)
    $controlWrapper = $(controlWrapper)
    $div.append controlWrapper
    if typeof content is "function"
      $div.addClass "unlabelled"
      content.call this, controlWrapper
    else if typeof content is "object"
      $div.addClass content.name or "unlabelled"
      $div.prepend @label(content.name, content.label)  if content.label
      $controlWrapper.append content.control
    div
)
