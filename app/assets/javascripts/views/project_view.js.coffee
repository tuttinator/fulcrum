Fulcrum = {}  if typeof Fulcrum is "undefined"
Fulcrum.ProjectView = Backbone.View.extend(
  initialize: ->
    @columns = {}
    _.bindAll this, "addStory", "addAll", "render"
    @model.stories.bind "add", @addStory
    @model.stories.bind "reset", @addAll
    @model.stories.bind "all", @render
    @model.bind "change:userVelocity", @addAll
    @model.stories.fetch()

  
  # Triggered when the 'Add Story' button is clicked
  newStory: ->
    @model.stories.add [
      events: []
      editing: true
    ]

  addStory: (story, column) ->
    
    # If column is blank determine it from the story.  When the add event
    # is bound on a collection, the callback sends the collection as the
    # second argument, so also check that column is a string and not an
    # object for those cases.
    column = story.column  if typeof column is "undefined" or typeof column isnt "string"
    view = new Fulcrum.StoryView(model: story).render()
    @appendViewToColumn view, column
    view.setFocus()

  appendViewToColumn: (view, columnName) ->
    $(columnName).append view.el

  addIteration: (iteration) ->
    that = this
    column = iteration.get("column")
    view = new Fulcrum.IterationView(model: iteration).render()
    @appendViewToColumn view, column
    _.each iteration.stories(), (story) ->
      that.addStory story, column


  addAll: ->
    $(".loading_screen").show()
    that = this
    $("#done").html ""
    $("#in_progress").html ""
    $("#backlog").html ""
    $("#chilly_bin").html ""
    @model.rebuildIterations()
    
    # Render each iteration
    _.each @model.iterations, (iteration) ->
      column = iteration.get("column")
      that.addIteration iteration

    
    # Render the chilly bin.  This needs to be rendered separately because
    # the stories don't belong to an iteration.
    _.each @model.stories.column("#chilly_bin"), (story) ->
      that.addStory story

    $(".loading_screen").hide()

  scaleToViewport: ->
    storyTableTop = $("table.stories tbody").offset().top
    
    # Extra for the bottom padding and the
    extra = 100
    height = $(window).height() - (storyTableTop + extra)
    $(".storycolumn").css "height", height + "px"

  notice: (message) ->
    $.gritter.add message

  addColumnView: (id, view) ->
    @columns[id] = view
)
