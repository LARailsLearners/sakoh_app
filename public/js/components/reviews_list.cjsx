React = require 'react'
Review = require './review'

ReviewsList = React.createClass
	render: ->
		reviews = for review in @props.reviews
			<Review review={review} key={review.id}/>

		<div>
			{reviews}
		</div>

module.exports = ReviewsList
