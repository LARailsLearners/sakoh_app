@ReviewApp = React.createClass
	render: ->
		<div>
			<ReviewsList reviews={@props.reviews} />
			<ReviewForm />
		</div>