$(document).on 'page:change', ->
  $('a.sidebar-toggle').click ->
    $('.ui.sidebar').sidebar 'toggle'
  $('.ui.dropdown').dropdown()
  # $('.ui.active.modal').modal('show')
