@ReviewsList = React.createClass
	getInitialState: ->
      reviews: @props.reviews
	render: ->
		reviews = @state.reviews.map (review) ->
			{user} = review.user

			<Review author={"#{user.first_name} #{user.last_name}"} body={review.body} />

		<div className="reviews">
			<hr/>
			<h2>Reviews</h2>
			<hr/>
			{reviews}
		</div>