@ReviewApp = React.createClass
	getInitialState: ->
      reviews: @props.initialReviews
	render: ->
		<div>
			<ReviewsList reviews={@state.reviews} />
			<ReviewForm />
		</div>