Fulcrum = {}  if typeof Fulcrum is "undefined"
Fulcrum.NoteCollection = Backbone.Collection.extend(
  model: Fulcrum.Note
  url: ->
    @story.url() + "/notes"

  saved: ->
    @reject (note) ->
      note.isNew()

)
