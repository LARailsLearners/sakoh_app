@ReviewsList = React.createClass
	getInitialState: ->
      reviews: @props.reviews
	render: ->
		reviews = for review in @state.reviews
			<Review author={review.author} body={review.body} />

		<div className="reviews">
			<hr/>
			<h2>Reviews</h2>
			<hr/>
			{reviews}
		</div>