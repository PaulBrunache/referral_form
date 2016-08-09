$(document).on 'turbolinks:load', ->
  $('a.sidebar-toggle').click ->
    $('.ui.sidebar').sidebar 'toggle'
  $('.ui.dropdown').dropdown()
  $('.tabular.menu .item').tab()
  $('.ui.active.modal').modal('show')
  $('.ui.cards .image').dimmer(on: 'hover')
