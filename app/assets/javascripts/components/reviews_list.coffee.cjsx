@ReviewsList = React.createClass
	render: ->
		reviews = @props.reviews?.map (review) ->

			<Review body={review.body} author={review.user_id} />

		<div className="reviews">
			<hr/>
			<h2>Reviews</h2>
			<hr/>
			{reviews}
		</div>