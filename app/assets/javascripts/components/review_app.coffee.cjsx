@loadReviews = (reviews) ->
	React.render(
    	<ReviewApp reviews={reviews}/>,
    	document.getElementById('reviews')
  	)

@ReviewApp = React.createClass
	getInitialState: ->
		reviews: @props.reviews

	render: ->
  		<div>
  			<ReviewsList reviews={@state.reviews} />
  		</div>
