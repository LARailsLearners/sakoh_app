@ReviewApp = React.createClass
	render: ->
		<div>
			<ReviewsList reviews={@props.reviews} authors={@props.authors} />
			<ReviewForm />
		</div>