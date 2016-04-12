# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  # Append the draggable widget to all the img objects
  $('.section').draggable stop: (event, ui) ->
    # Generate the img object with the new coordinates.
    line =
      'id': $(this).attr('id')
      'position_y': $(this).position().top.toString()
      'position_x': $(this).position().left.toString()
    # Send the request to the server
    $.ajax
      type: 'PUT'
      url: '/images/' + $(this).attr('id') + '.json'
      data: JSON.stringify(img)
      contentType: 'application/json'
      dataType: 'json'
      error: (xhr, msg, error) ->
        alert msg + ': ' + error
        return
    return
  return