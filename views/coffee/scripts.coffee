$ ->
  
  $(".btn-popover").popover()
  
  $(window).load ->
    $(".main-box-content").addClass "load"

  $(".nav li a, .item a").on "click", (e) ->
    link = $(@).attr("data-link")
    if link isnt "blog"
      e.preventDefault()    
      $(".main-box-content > div").hide()
      $(".main-box-content .#{link}").fadeIn 200
 
  $(".footer a.contact-link").on "click", (e) ->
    e.preventDefault()
    $(".main-box-content .store").hide()
    $(".main-box-content .product").hide()
    $(".main-box-content .collections").hide()
    $(".main-box-content .about").hide()
    $(".main-box-content .intro").fadeOut 200, ->
      $(".main-box-content .contact").fadeIn 200
 