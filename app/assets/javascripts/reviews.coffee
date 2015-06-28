# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
@addReview = (productId, currentUser) ->

	review =
		body: $("#review_textarea").val()
		user_id: currentUser.id
		product_id: productId

	$('#reviews').append("
		<hr>
		<b>Author Name:</b> #{currentUser.first_name} #{currentUser.last_name}<br>
		#{review.body}
	")

	$.ajax
		url: "/products/#{productId}/reviews"
		method: "POST"
		dataType: "json"
		data: { review: review }
		done: ->
			console.log data.review.id
		fail: (error) ->
			console.log error


	$('#review_textarea').val('')


	false
