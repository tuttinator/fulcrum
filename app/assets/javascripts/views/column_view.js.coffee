Fulcrum = {}  if typeof Fulcrum is "undefined"
Fulcrum.ColumnView = Backbone.View.extend(
  template: JST["templates/column"]
  tagName: "td"
  events:
    "click a.toggle-column": "toggle"

  name: ->
    @options.name

  render: ->
    @$el.html @template(
      id: @id
      name: @name()
    )
    @setSortable()  if @options.sortable
    this

  toggle: ->
    @$el.toggle()
    @trigger "visibilityChanged"

  
  # Returns the child div containing the story and iteration elements.
  storyColumn: ->
    @$ ".storycolumn"

  
  # Append a Backbone.View to this column
  appendView: (view) ->
    @storyColumn().append view.el

  
  # Adds the sortable behaviour to the column.
  setSortable: ->
    @storyColumn().sortable
      handle: ".story-title"
      opacity: 0.6
      items: ".story:not(.accepted)"
      update: (ev, ui) ->
        ui.item.trigger "sortupdate", ev, ui


  
  # Returns the current visibility state of the column.
  hidden: ->
    @$el.is ":hidden"
)
