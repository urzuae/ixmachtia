# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $('#contents').sortable();

  $(document).on 'change', '#content_content_type_id', ->
    type = $(this).find('option:selected').html()
    hide = '.content-Text'
    show = '.types'
    $(hide).removeClass("hidden")
    $(show).removeClass("hidden")
    if 'Text' == type
      hide = '.types'
      show = '.content-Text'
    $(show).show()
    $(hide).hide()
    return
  return