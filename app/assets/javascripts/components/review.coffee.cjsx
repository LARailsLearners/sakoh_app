@Review = React.createClass
	getInitialState: ->
		review: @props.review
		isEditing: false
		value: @props.review.body
	startEditing: (e) ->
		e.preventDefault()
		@setState(isEditing: true)
	handleChange: ->
		@setState(value: event.target.value)
	handleSubmit: (e) ->
		e.preventDefault()
		review = @state.review
		review.body = @state.value
		@setState(review: review)
		@setState(isEditing: false)
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
				<textarea className="form-control" onChange={@handleChange} value={@state.value}></textarea>
				<button className="btn btn-success">Update</button>
			</form>