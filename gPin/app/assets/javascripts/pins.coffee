$(document).ready ->
  $(".showComments").on "click", (e) ->
    e.preventDefault()
    $(this).next(".comments").css "display", "block"
    $(this).css "display", "none"

  $(".hideComments").click (e) ->
    e.preventDefault()
    comments = $(this).parent(".comments")
    comments.css "display", "none"
    comments.prev(".showComments").css "display", "inline"

   