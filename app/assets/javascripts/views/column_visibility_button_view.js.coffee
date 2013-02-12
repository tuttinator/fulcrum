Fulcrum = {}  if typeof Fulcrum is "undefined"
Fulcrum.ColumnVisibiltyButtonView = Backbone.View.extend(
  events:
    click: "toggle"

  tagName: "a"
  attributes:
    href: "#"
    class: "btn"

  initialize: ->
    _.bindAll this, "setClassName"
    @options.columnView.bind "visibilityChanged", @setClassName

  render: ->
    @$el.html @options.columnView.name()
    this

  
  # Delegates to toggle() on the associated ColumnView
  toggle: ->
    @options.columnView.toggle()

  setClassName: ->
    if @options.columnView.hidden()
      @$el.addClass "pressed"
    else
      @$el.removeClass "pressed"
)
