@Review = React.createClass
	render: ->
		<div>
			<b>Author: </b> {@props.review.user.first_name} {@props.review.user.last_name} <br/>
			<b>Rating: </b> {@props.review.rating} of 5 stars

			<p>{@props.review.body}</p>
			<hr/>
		</div>