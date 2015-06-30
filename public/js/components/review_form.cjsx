React = require 'react'

ReviewForm = React.createClass
	render: ->
		<form id="review_form">
			<textarea className="form-control" value={@props.value}></textarea>
			<button className="btn btn-primary">Submit</button>
		</form>

module.exports = ReviewForm
