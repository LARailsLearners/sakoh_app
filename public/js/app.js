import React from 'react';
import ReviewApp from './components/review_app';

window.loadReviews = (reviews) => {
	React.render(
    	<ReviewApp reviews={reviews}/>,
    	document.getElementById('reviews')
  	);
}

