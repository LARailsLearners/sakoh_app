@ReviewsList = React.createClass
	setInitialState: ->
		reviews: @props.reviews
	render: ->
		reviews = @state.reviews.map (review) ->
			
			<Review author={review.user.first_name} body={review.body} />

		<div className="reviews">
			<hr/>
			<h2>Reviews</h2>
			<hr/>
			{reviews}
		</div>