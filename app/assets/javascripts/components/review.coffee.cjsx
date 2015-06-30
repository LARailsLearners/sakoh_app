@Review = React.createClass
	getInitialState: ->
		review: @props.review
		isEditing: false
		value: @props.review.body
		selection: @props.review.rating
	startEditing: (e) ->
		e.preventDefault()
		@setState(isEditing: true)
	handleChange: ->
		@setState(value: event.target.value)
	handleSelection: ->
		@setState(selection: event.target.value)
	handleSubmit: (e) ->
		e.preventDefault()
		review = @state.review
		review.body = @state.value
		review.rating = @state.selection
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
				<select value={@state.selection}>
  				  <option onChange={@handleSelection}>1</option>
  				  <option onChange={@handleSelection}>2</option>
  				  <option onChange={@handleSelection}>3</option>
  				  <option onChange={@handleSelection}>4</option>
  				  <option onChange={@handleSelection}>5</option>
  				</select>
				<textarea className="form-control" onChange={@handleChange} value={@state.value}></textarea>
				<button className="btn btn-success">Update</button>
			</form>