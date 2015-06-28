# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
@addReview = (productId, currentUser) ->

	review =
		body: $("#review_textarea").val()
		user_id: currentUser.id
		product_id: productId

	$.ajax
		url: "/products/#{productId}/reviews"
		method: "POST"
		dataType: "json"
		data: { review: review }
		success: (data) ->
			updateReviewList(review, currentUser)
			$('#review_textarea').val('')
		fail: (error) ->
			console.log error

	false

updateReviewList = (review, author) ->
	$('#reviews').append("
		<hr>
		<b>Author Name:</b> #{author.first_name} #{author.last_name}<br>
		#{review.body}
	")
