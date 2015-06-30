React = require 'react'
ReviewsList = require './reviews_list'

ReviewApp = React.createClass
	getInitialState: ->
		reviews: @props.reviews

	render: ->
  		<div>
  			<ReviewsList reviews={@state.reviews} />
  		</div>

module.exports = ReviewApp
