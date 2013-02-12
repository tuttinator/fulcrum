Fulcrum = {}  if typeof Fulcrum is "undefined"
Fulcrum.ProjectVelocityOverrideView = Backbone.View.extend(
  className: "velocity_override_container"
  events:
    "click button[name=apply]": "changeVelocity"
    "click button[name=revert]": "revertVelocity"
    "keydown input[name=override]": "keyCapture"

  template: _.template("<form>" + "  <ul>" + "    <li>Override Velocity:" + "      <input name=\"override\" size=2 value=<%= project.velocity() %> />" + "    </li>" + "    <li>" + "      <button name=\"revert\" value=\"revert\" class=\"btn btn-mini\">Revert</button>" + "      <button name=\"apply\" value=\"apply\" class=\"btn btn-mini btn-primary\">Apply</button>" + "    </li>" + "  </ul>" + "</form>")
  render: ->
    @$el.html @template(project: @model)
    @delegateEvents()
    this

  changeVelocity: ->
    @model.velocity @requestedVelocityValue()
    @$el.remove()
    false

  revertVelocity: ->
    @model.revertVelocity()
    @$el.remove()
    false

  requestedVelocityValue: ->
    parseInt @$("input[name=override]").val(), 10

  keyCapture: (e) ->
    @changeVelocity()  if e.keyCode is "13"
)
