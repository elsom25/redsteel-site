start_spinner = ->
  $(document).find('body').spin('large', '#fff')
  $(document).find('body > *:not(.spinner)').wrapAll('<div class="blur-all">')
  return

stop_spinner = ->
  $(document).find('.blur-all').children().first().unwrap()
  $(document).find('body').spin(false)
  return

$document = $(document)
$document.on 'page:fetch', start_spinner()
$document.on 'page:receive', stop_spinner()

$ -> $(document).foundation()
