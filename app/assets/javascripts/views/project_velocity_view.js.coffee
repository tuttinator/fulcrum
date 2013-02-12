Fulcrum = {}  if typeof Fulcrum is "undefined"
Fulcrum.ProjectVelocityView = Backbone.View.extend(
  className: "velocity"
  initialize: ->
    _.bindAll this, "setFakeClass", "render"
    @override_view = new Fulcrum.ProjectVelocityOverrideView(model: @model)
    @model.bind "change:userVelocity", @setFakeClass
    @model.bind "rebuilt-iterations", @render

  events:
    "click #velocity_value": "editVelocityOverride"

  template: JST["templates/project_velocity"]
  render: ->
    @$el.html @template(project: @model)
    @setFakeClass @model
    this

  editVelocityOverride: ->
    @$el.append @override_view.render().el

  setFakeClass: (model) ->
    if model.velocityIsFake()
      @$el.addClass "fake"
    else
      @$el.removeClass "fake"
)
