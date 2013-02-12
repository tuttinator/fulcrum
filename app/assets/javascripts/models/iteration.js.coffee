Fulcrum = {}  if typeof Fulcrum is "undefined"
Fulcrum.Iteration = Backbone.Model.extend(
  name: "iteration"
  initialize: (opts) ->
    @set stories: opts.stories or []
    @isFull = false

  
  # Return the list of stories
  stories: ->
    if @get("column") is "#in_progress"
      stories = @storiesWithState("accepted")
      stories.concat @storiesExceptState("accepted")
    else
      @get "stories"

  storiesWithState: (state) ->
    _.select @get("stories"), (story) ->
      story.get("state") is state


  storiesExceptState: (state) ->
    _.reject @get("stories"), (story) ->
      story.get("state") is state


  points: ->
    _.reduce @get("stories"), ((memo, story) ->
      estimate = 0
      estimate = story.get("estimate") or 0  if story.get("story_type") is "feature"
      memo + estimate
    ), 0

  acceptedPoints: ->
    _.reduce @get("stories"), ((memo, story) ->
      estimate = 0
      estimate = story.get("estimate") or 0  if story.get("story_type") is "feature" and story.get("state") is "accepted"
      memo + estimate
    ), 0

  
  # Returns the number of points available before this iteration is full.
  # Only valid for backlog iterations.
  availablePoints: ->
    @get("maximum_points") - @points()

  
  #
  # Returns true if this iteration has enough points free for a given
  # story.  Only valid for backlog iterations.
  canTakeStory: (story) ->
    return false  if @isFull is true
    return true  if @points() is 0
    if story.get("story_type") is "feature"
      @isFull = story.get("estimate") > @availablePoints()
      not @isFull
    else
      true

  
  # Report how many points this iteration overflows by.  For example, if
  # the iteration maximum points is 2, and it has a single 5 point story,
  # its overflow will be 3 points.  Will return 0 if the iteration has
  # less than or equal to its maximum points.
  overflowsBy: ->
    difference = @points() - @get("maximum_points")
    (if (difference < 0) then 0 else difference)

  startDate: ->
    @project.getDateForIterationNumber @get("number")
,
  
  #
  # Class properties
  #
  
  # Creates a range of empty iteration between 2 other iteration objects.
  # For example, if passed iteration 1 for start and iteration 5 for end
  # will return an array of iterations numbered 2, 3 and 4.  Each iteration
  # will be assigned to the provided column.
  createMissingIterations: (column, startIteration, endIteration) ->
    
    # A reference to Iteration().
    that = this
    if typeof startIteration is "undefined"
      
      # Create a dummy iteration with number 0
      startIteration = new that(
        number: 0
        column: column
      )
    start = parseInt(startIteration.get("number"), 10) + 1
    end = parseInt(endIteration.get("number"), 10)
    throw "end iteration number:" + end + " must be greater than start iteration number:" + start  if end < start
    missing_range = _.range(start, end)
    _.map missing_range, (missing_iteration_number) ->
      iteration = new that(
        number: missing_iteration_number
        column: column
      )
      iteration

)
