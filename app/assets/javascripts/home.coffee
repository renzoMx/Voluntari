$ ->
  opened = false
  $('#burger').on 'touchstart click', (event) ->
    event.preventDefault()
    if opened == false
      $('#burger').removeClass 'burger'
      $('#burger').addClass 'close-menu'

      $('#list-menu').removeClass("hidden-menu")
      $('#list-menu').addClass("show-menu")
      opened = true
    else
      $('#burger').removeClass 'close-menu'
      $('#burger').addClass 'burger'
      
      $('#list-menu').removeClass("show-menu")
      $('#list-menu').addClass("hidden-menu")
      opened = false
    return
  return
$ ->
  $(".owl-carousel").owlCarousel({navigation: true, navigationText: ["<", ">"],pagination : false})

$ ->
  $('#l-video').parent().on 'touchstart click', ->
    if $(this).children('#l-video').get(0).paused
      $(this).children('#l-video').get(0).play()
      $(this).children('#play-button').fadeOut()
    else
      $(this).children('#l-video').get(0).pause()
      $(this).children('#play-button').fadeIn()
    return
  return





