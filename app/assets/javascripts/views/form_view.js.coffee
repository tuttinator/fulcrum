Fulcrum = {}  if typeof Fulcrum is "undefined"
Fulcrum.FormView = Backbone.View.extend(
  tagName: "form"
  label: (elem_id, value) ->
    value = value or elem_id
    @make "label",
      for: elem_id
      class: "control-label"
    , value

  textField: (name, extra_opts) ->
    defaults =
      type: "text"
      name: name
      value: @model.get(name)

    @mergeAttrs defaults, extra_opts
    el = @make("input", defaults)
    @bindElementToAttribute el, name, "keyup"
    el

  hiddenField: (name) ->
    el = @make("input",
      type: "hidden"
      name: name
      value: @model.get(name)
    )
    @bindElementToAttribute el, name
    el

  textArea: (name) ->
    el = @make("textarea",
      name: name
      value: @model.get(name)
    )
    @bindElementToAttribute el, name
    el

  select: (name, select_options, options) ->
    select = @make("select",
      name: name
    )
    view = this
    model = @model
    options = {}  if typeof options is "undefined"
    if options.blank
      $(select).append @make("option",
        value: ""
      , options.blank)
    _.each select_options, (option) ->
      if option instanceof Array
        option_name = option[0]
        option_value = option[1]
      else
        option_name = option_value = option + ""
      attr = value: option_value
      attr.selected = true  if model.get(name) is option_value
      $(select).append view.make("option", attr, option_name)

    @bindElementToAttribute select, name
    select

  checkBox: (name) ->
    attr =
      type: "checkbox"
      name: name
      value: 1

    attr.checked = "checked"  if @model.get(name)
    el = @make("input", attr)
    @bindElementToAttribute el, name
    el

  submit: ->
    el = @make("input",
      id: "submit"
      type: "button"
      class: "btn btn-mini btn-primary"
      value: "Save"
    )
    el

  destroy: ->
    el = @make("input",
      id: "destroy"
      type: "button"
      class: "btn btn-mini btn-danger"
      value: "Delete"
    )
    el

  cancel: ->
    el = @make("input",
      id: "cancel"
      type: "button"
      class: "btn btn-mini"
      value: "Cancel"
    )
    el

  bindElementToAttribute: (el, name, eventType) ->
    that = this
    eventType = (if typeof (eventType) isnt "undefined" then eventType else "change")
    $(el).bind eventType, ->
      obj = {}
      obj[name] = $(el).val()
      that.model.set obj,
        silent: true

      true


  mergeAttrs: (defaults, opts) ->
    jQuery.extend defaults, opts
)
