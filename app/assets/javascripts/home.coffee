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

