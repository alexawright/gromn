$ ->
  
  $(".btn-popover").popover()
  
  $(window).load ->
    $(".main-box-content").addClass "load"

  $("a.about").on "click", (e) ->
    e.preventDefault()
    $(".main-box-content .intro").fadeOut 200, ->
      $(".main-box-content .about").fadeIn 200

  $("a.store").on "click", (e) ->
    e.preventDefault()
    $(".main-box-content .intro").fadeOut 200, ->
      $(".main-box-content .store").fadeIn 200