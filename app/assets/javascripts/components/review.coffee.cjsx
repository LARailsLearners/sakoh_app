@Review = React.createClass 
	render: ->
		<div className="comment">
			<b> Author Name: </b> {@props.review.user.first_name} {@props.review.user.last_name} 
			<p>{@props.review.body}</p>
			<hr/>
		</div>