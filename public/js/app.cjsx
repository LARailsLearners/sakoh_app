React = require 'react'
ReviewApp = require './components/review_app'

window.loadReviews = (reviews) ->
	React.render(
    	<ReviewApp reviews={reviews}/>,
    	document.getElementById('reviews')
  	)

