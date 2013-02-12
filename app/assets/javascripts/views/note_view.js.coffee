Fulcrum = {}  if typeof Fulcrum is "undefined"
Fulcrum.NoteView = Backbone.View.extend(
  template: JST["templates/note"]
  tagName: "div"
  className: "note"
  events:
    "click a.delete-note": "deleteNote"

  render: ->
    @$el.html @template(note: @model)
    this

  deleteNote: ->
    @model.destroy()
    @$el.remove()
    false
)
