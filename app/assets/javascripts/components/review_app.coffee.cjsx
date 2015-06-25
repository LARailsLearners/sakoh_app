@ReviewApp = React.createClass
	getInitialState: ->
      	reviews: null
    loadFromServer: ->
    	$.getJSON @props.url, (data) -> data
	render: ->
		<div>
			<ReviewsList reviews={@state.reviews} />
			<ReviewForm />
		</div>

@mountReviews = (url) -> 
	React.render(<ReviewApp url={url}/>, document.getElementById('reviews'))