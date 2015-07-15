import React from 'react';
import Review from './review';

class ReviewsList extends React.Component {
	render(){
		let reviews = this.props.reviews.map(
			(review) => <Review review={review} key={review.id}/>
		);

		return <div>
			{reviews}
		</div>;
	}
}

export default ReviewsList;
