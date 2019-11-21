# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $('#contents').sortable
    revert: true
    update: (ui, event) ->
      ids = []
      $("#contents .content-container").each ->
        if(this.id != undefined && this.id != "")
          ids.push(this.id)
      $.ajax
        type: 'POST'
        url: '/contents/reorder'
        dataType: 'json'
        contentType: 'application/json'
        data: JSON.stringify({sortable: ids})
      return
  
  $('.tabs').tabs()
  return