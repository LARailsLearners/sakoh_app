posts = [
	{author: "James White", body: "Nice Product"},
	{author: "Sako Hartounian", body: "No! this product really sucks"},
	{author: "Robert Lee", body: "Don't be a hater"}
]


@CommentsList = React.createClass
	render: ->

		comments = for post in posts
			<Comment author={post.author} body={post.body} />

		<div className="comments">
			<hr/>
			<h2>Reviews</h2>
			<hr/>
			{comments}
		</div>