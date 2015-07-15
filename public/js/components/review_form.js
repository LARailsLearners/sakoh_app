import React from 'react';

class ReviewForm extends React.Component {
	render(){
		return <form id="review_form">
			<textarea className="form-control" value={@props.value}></textarea>
			<button className="btn btn-primary">Submit</button>
		</form>;
	}
}

export default ReviewForm;
