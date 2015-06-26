# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
@addReview = (currentUser) ->
	$('#reviews').append("
		<hr>
		<b>Author Name:</b> #{currentUser.first_name} #{currentUser.last_name}<br>
		#{$('#review_textarea').val()}
	")

	$('#review_textarea').val('')

	false