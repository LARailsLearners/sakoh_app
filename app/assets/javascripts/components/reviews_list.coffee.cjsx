@ReviewsList = React.createClass
	render: ->
		reviews = @props.reviews.map (review) ->
			
			author = @props.authors.filter (author) -> author.id is review.user_id
			
			<Review author={author[0].first_name} body={review.body} />

		<div className="reviews">
			<hr/>
			<h2>Reviews</h2>
			<hr/>
			{reviews}
		</div>