Fulcrum = {}  if typeof Fulcrum is "undefined"
Fulcrum.UserCollection = Backbone.Collection.extend(
  model: Fulcrum.User
  forSelect: ->
    @map (user) ->
      [user.get("name"), user.id]

)
