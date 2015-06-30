@Review = React.createClass
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
		@setState(review: review)
		@setState(isEditing: false)
	handleTextChange: (e) ->
		@setState(body: e.target.value)
	handleRatingChange: (e) ->
		@setState(rating: e.target.value)
	render: ->
		unless @state.isEditing
			<div>
				<b>Author: </b> {@state.review.user.first_name} {@state.review.user.last_name} <br/>
				<b>Rating: </b> {@state.review.rating} of 5 stars

				<p>{@state.review.body}</p>
				<a className="pointer" onClick={@startEditing}>Edit</a>
				<hr/>
			</div>
		else
			<form id="review_form" onSubmit={@handleSubmit}>
				<select ref="rating" onChange={@handleRatingChange} value={@state.rating}>
  				  <option value="1">1</option>
  				  <option value="2">2</option>
  				  <option value="3">3</option>
  				  <option value="4">4</option>
  				  <option value="5">5</option>
  				</select>
				<textarea onChange={@handleTextChange} className="form-control" ref="body" value={@state.body}></textarea>
				<button className="btn btn-success">Update</button>
			</form>
