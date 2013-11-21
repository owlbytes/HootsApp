# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  $('a.load-more-posts').on 'inview', (e, visible) ->
    return unless visible
    $.getScript $(this).attr('href')

  getValue = (id) -> $(id).val()

  setHtml = (id, html) ->  $(id).html(html)

  preview_and_count_check = ->
    post = getValue('#post_content')
    digits_left = 141 - post.length

    setHtml("#digits-left", "Digits left: " + digits_left);

    if digits_left < 0
      $('input[type=submit').prop( 'disabled', true)
    else 
      $('input[type=submit').prop( 'disabled', false)
      setHtml('#post-text', post)

  $("#post_content").on     "keyup",  preview_and_count_check