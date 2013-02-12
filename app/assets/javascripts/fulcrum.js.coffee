$ ->
  $("#add_story").click ->
    window.projectView.newStory()
    
    # Show chilly bin if it's hidden
    $(".hide_chilly_bin.pressed").click()
    newStoryElement = $("#chilly_bin div.story:last")
    $("#chilly_bin").scrollTo newStoryElement, 100

  
  # Add close button to flash messages
  $("#messages div").prepend("<a class=\"close\" href=\"#\">×</a>").find("a.close").click ->
    $(this).parent().slideUp()
    false

