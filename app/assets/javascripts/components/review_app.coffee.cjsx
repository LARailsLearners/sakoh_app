@ReviewApp = React.createClass
	getInitialState: ->
      reviews: null
    
    componentDidMount: ->
    	$.get(@props.url, (data) ->
    	    @setState(reviews: data) if @isMounted()
    	).bind(@)

	render: ->
		<div>
			<ReviewsList reviews={@state.reviews} />
			<ReviewForm />
		</div>