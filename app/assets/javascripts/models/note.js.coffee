Fulcrum = {}  if typeof Fulcrum is "undefined"
Fulcrum.Note = Backbone.Model.extend(
  name: "note"
  i18nScope: "activerecord.attributes.note"
  user: ->
    userId = @get("user_id")
    @collection.story.collection.project.users.get userId

  userName: ->
    user = @user()
    (if user then user.get("name") else "Author unknown")
)
_.defaults Fulcrum.Note::, Fulcrum.SharedModelMethods
