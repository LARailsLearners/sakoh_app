@ReviewsList = React.createClass
	getInitialState: ->
      	reviews: @props.reviews
	render: ->
		if @state.reviews?
			reviews = @props.reviews.map (review) ->
				author = "#{review.user.first_name} #{review.user.last_name}"

				<Review author={author} body={review.body} />

		<div className="reviews">
			<hr/>
			<h2>Reviews</h2>
			<hr/>
			{reviews}
		</div>