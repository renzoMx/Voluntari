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
  play = false;
  $('#play-button').on 'touchstart click', (event) ->
    event.preventDefault()
    if play == false
      $(this).removeClass('icon-play')
      $(this).addClass('icon-pause')
      $('#l-video').get(0).play();
      play = true
    else
      $(this).removeClass('icon-pause')
      $(this).addClass('icon-play')
      $('#l-video').get(0).pause();
      play = false
    return
  return





