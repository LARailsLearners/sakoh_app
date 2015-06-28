@loadReviews = (reviews) ->
	React.render(
    	<ReviewApp reviews={reviews}/>,
    	document.getElementById('reviews')
  	)

@ReviewApp = React.createClass
  	render: ->
  		<div>
  			<ReviewsList reviews={@props.reviews} />
    		<ReviewForm /> 
  		</div>
