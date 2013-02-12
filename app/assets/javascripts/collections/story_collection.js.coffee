Fulcrum = {}  if typeof Fulcrum is "undefined"
Fulcrum.StoryCollection = Backbone.Collection.extend(
  model: Fulcrum.Story
  initialize: ->
    @bind "change:position", @sort
    @bind "change:state", @sort
    @bind "change:estimate", @sort
    @bind "change:labels", @addLabelsFromStory
    @bind "add", @addLabelsFromStory
    @bind "reset", @resetLabels
    @labels = []

  comparator: (story) ->
    story.position()

  next: (story) ->
    @at @indexOf(story) + 1

  previous: (story) ->
    @at @indexOf(story) - 1

  
  # Returns all the stories in the named column, either #done, #in_progress,
  # #backlog or #chilly_bin
  column: (column) ->
    @select (story) ->
      story.column is column


  
  # Returns an array of the stories in a set of columns.  Pass an array
  # of the column names accepted by column().
  columns: (columns) ->
    that = this
    _.flatten _.map(columns, (column) ->
      that.column column
    )

  
  # Takes comma separated string of labels and adds them to the list of
  # availableLabels.  Any that are already present are ignored.
  addLabels: (labels) ->
    @labels = _.union(@labels, labels)

  addLabelsFromStory: (story) ->
    @addLabels story.labels()

  resetLabels: ->
    collection = this
    collection.each (story) ->
      collection.addLabelsFromStory story

)
