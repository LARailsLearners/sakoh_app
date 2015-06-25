@Review = React.createClass 
	render: ->
		<div className="comment">
			<b> Author Name: </b> {@props.user.first_name} {@props.user.last_name} 
			<p>{@props.review.body}</p>
			<hr/>
		</div>