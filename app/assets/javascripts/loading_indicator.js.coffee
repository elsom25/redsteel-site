spinner = null

$(document).on 'page:fetch', ->
  spinner = setTimeout( (-> $('.loading-indicator').show()), 500)

$(document).on 'page:change', ->
  clearTimeout( spinner )
  $('.loading-indicator').hide()
