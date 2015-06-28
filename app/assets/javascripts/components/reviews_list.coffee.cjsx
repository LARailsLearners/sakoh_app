@ReviewsList = React.createClass
	render: ->
		reviews = for review in @props.reviews
			<Review review={review} />

		<div>
			{reviews}
		</div>