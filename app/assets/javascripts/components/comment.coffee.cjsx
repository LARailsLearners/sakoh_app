@Comment = React.createClass 
	render: ->
		<div className="comment">
			<b> Author Name: </b> {@props.author} 
			<p>{@props.body}</p>
			<hr/>
		</div>