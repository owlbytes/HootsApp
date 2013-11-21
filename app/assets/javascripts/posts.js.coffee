# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->

  $('a.load-more-posts').on 'inview', (e, visible) ->
    return unless visible
    $.getScript $(this).attr('href')

  getValue = (id) -> $(id).val()

  setHtml = (id, html) ->  $(id).html(html)

  preview_and_count_check_post = ->
    post = getValue('#post_content')
    digits_left = 141 - post.length

    setHtml("#digits-left", "Characters left: " + digits_left);

    if digits_left < 0
      $('input[type=submit]').prop( 'disabled', true)
      $('#digits-left').css("color", "red")
    else 
      $('input[type=submit]').prop( 'disabled', false)
      $('#digits-left').css("color", "white")
      if post.length < 1
        post = "Hoot..."
        $('input[type=submit]').prop( 'disabled', true)
        setHtml('#post-text', post)
      else
        setHtml('#post-text', post)

  preview_and_count_check_comment = ->
    comment = getValue('#comment_content')
    digits_left = 70 - comment.length

    setHtml("#digits-left", "Characters left: " + digits_left);

    if digits_left < 0
      $('input[type=submit]').prop( 'disabled', true)
      $('#digits-left').css("color", "red")
    else 
      $('input[type=submit]').prop( 'disabled', false)
      $('#digits-left').css("color", "white")

  $("#post_content").on     "keyup",  preview_and_count_check_post
  $("#comment_content").on     "keyup",  preview_and_count_check_comment

  window.onload = preview_and_count_check_post
  