React = require 'react'
$ = require 'jquery'

Review = React.createClass
	getInitialState: ->
		review: @props.review
		isEditing: false
		body: @props.review.body
		rating: @props.review.rating
	startEditing: (e) ->
		e.preventDefault()
		@setState(isEditing: true)
	handleSubmit: (e) ->
		e.preventDefault()
		review = @state.review
		review.body = @state.body
		review.rating = @state.rating
		$.ajax
  			url: "/products/#{@state.review.product_id}/reviews/#{@state.review.id}.json"
  			method: 'PUT'
  			dataType: 'json'
  			data: {review: review}
  			success: (data) ->
    			@setState(review: review) 
    			@setState(isEditing: false)
    			return
  			fail: (error) ->
    			console.log error
	handleTextChange: (e) ->
		@setState(body: e.target.value)
	handleRatingChange: (e) ->
		@setState(rating: e.target.value)
	render: ->
		unless @state.isEditing
			<div>
				<h5 style={fontWeight: "bold"}>Author: </h5> {@state.review.user.first_name} {@state.review.user.last_name} <br/>
				<h5 style={fontWeight: "bold"}>Rating: </h5> {@state.rating} of 5 stars <br/>
				<h5 style={fontWeight: "bold"}>Description: </h5>
				<p>{@state.review.body}</p>
				<a className="pointer" onClick={@startEditing}>Edit</a>
				<hr/>
			</div>
		else
			<form id="review_form" onSubmit={@handleSubmit}>
				<h4 style={fontWeight: "bold"}>Your Review</h4>
				<h5 style={fontWeight: "bold"}>Rating:</h5>	
				<select ref="rating" onChange={@handleRatingChange} value={@state.rating}>
  				  <option value="1">1</option>
  				  <option value="2">2</option>
  				  <option value="3">3</option>
  				  <option value="4">4</option>
  				  <option value="5">5</option>
  				</select>
  				<h5 style={fontWeight: "bold"}>Body:</h5>	
				<textarea onChange={@handleTextChange} className="form-control" ref="body" value={@state.body}></textarea>
				<button className="btn btn-success">Update</button>
			</form>

module.exports = Review
