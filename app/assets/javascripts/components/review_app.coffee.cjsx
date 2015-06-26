@ReviewApp = React.createClass
	getInitialState: ->
      	reviews: @props.reviews
	render: ->
		<div>
			<ReviewsList reviews={@state.reviews} users={@props.users} />
			<ReviewForm />
		</div>