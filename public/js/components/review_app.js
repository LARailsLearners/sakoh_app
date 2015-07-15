import React from 'react';
import ReviewsList from './reviews_list';

class ReviewApp extends React.Component{
	constructor(props){
		super(props);
		this.state = {
			reviews: this.props.reviews
		}
	}

	render(){
		return <div>
  			<ReviewsList reviews={this.state.reviews} />
  		</div>;
	}
}


export default ReviewApp;
