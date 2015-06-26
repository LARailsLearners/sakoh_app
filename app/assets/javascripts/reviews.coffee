# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
@addReview = (productId, currentUser) ->
	$('#reviews').append("
		<hr>
		<b>Author Name:</b> #{currentUser.first_name} #{currentUser.last_name}<br>
		#{$('#review_textarea').val()}
	")

	$('#review_textarea').val('')

	$.ajax
		method: "POST"
		url: "/products/#{productId}/reviews"
		data:
			review:
				body: $("#review_textarea").val()
				product_id: productId
				user_id: currentUser.id
		success:(data) ->
        	alert data.review.id

	false