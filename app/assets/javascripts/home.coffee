$ ->
  opened = false
  $('#burger').on 'touchstart click', (event) ->
    event.preventDefault()
    if opened == false
      $('#burger').removeClass 'burger'
      $('#burger').addClass 'close-menu'

      $('#list-menu').removeClass("hidden-menu")
      $('#list-menu').addClass("show-menu")
      $('header').css({'background': '#F2F5FA'})
      opened = true
    else
      $('#burger').removeClass 'close-menu'
      $('#burger').addClass 'burger'
      
      $('#list-menu').removeClass("show-menu")
      $('#list-menu').addClass("hidden-menu")
      $('header').css({'background': 'transparent'})
      opened = false
    return
  return
$ ->
  $(".owl-carousel").owlCarousel({navigation: true, navigationText: ["<i class='prev-icon'></i>", "<i class='next-icon'></i>"],pagination : false})

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
$ ->
  $('header').data 'size', 'big'
  return
$(window).scroll ->
  if $(document).scrollTop() > 0
    if $('header').data('size') == 'big'
      $('header').data 'size', 'small'
      $('header').stop().animate { height: '53px' }, 600
      $('header').css({'background': '#F2F5FA','padding':0,'transition': 'all .3s ease'})
      $('nav ul li a').css({'color': '#666666'})
      $('nav ul li .login').css({'color': '#ffffff'})
  else
    if $('header').data('size') == 'small'
      $('header').data 'size', 'big'
      $('header').stop().animate { height: '100px' }, 600
      $('header').css({'background': 'transparent','padding':'30px','transition': 'all .3s ease'})
      $('nav ul li a').css({'color': '#DAE4E8'})
  return




