# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $('#chapters').sortable
    revert: true
    update: (ui, event) ->
      ids = []
      $("#chapters .chapter-container").each ->
        if(this.id != undefined && this.id != "")
          ids.push(this.id)
      $.ajax
        type: 'POST'
        url: '/chapters/reorder'
        dataType: 'json'
        contentType: 'application/json'
        data: JSON.stringify({sortable: ids})
      return
  
  $('.tabs').tabs()
  return