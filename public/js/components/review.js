import React from 'react';

class Review extends React.Component {
	constructor(props){
		super(props);
		this.state = {
			review: this.props.review,
			body: this.props.review.body,
			rating: this.props.review.rating
		};
	}

  	render(){
  	
  		return (
  			<div>
				<h5 className="heading-title">Author: </h5> 
				{this.state.review.user.first_name} {this.state.review.user.last_name} <br/>
				<h5 className="heading-title">Rating: </h5> {this.state.rating} of 5 stars <br/>
				<h5 className="heading-title">Description: </h5>
				<p>{this.state.review.body}</p>
				<hr/>
			</div>
		);
	
	  }

}
	
export default Review;
