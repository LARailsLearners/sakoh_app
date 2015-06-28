require 'rails_helper'

RSpec.describe Review, type: :model do

  let(:user) { create(:user) }

  let(:product) { user.products.create(attributes_for(:product) ) }

  let(:review) do
    review = product.reviews.build( attributes_for(:review) )
    review.user_id = user.id
    review
  end

  it "should have a body" do
  	review.body = ""
  	review.save
  	expect(review).to_not be_valid
  end

  it "should have a rating" do
    review.rating = ""
    review.save
    expect(review).to_not be_valid
  end

  it "shouldn't have a rating less than 1" do
    review.rating = 0
    review.save
    expect(review).to_not be_valid
  end

  it "shouldn't have a rating more than 5" do
    review.rating = 6
    review.save
    expect(review).to_not be_valid
  end

  it "should have an author" do
    review.user_id = ""
    review.save
    expect(review).to_not be_valid
  end

  it "should have a unique author" do
    review = Review.create(
      user_id: user.id, 
      body: "Really Good product", 
      rating: 5, 
      product_id: product.id 
    )

    another_review = Review.create(
      user_id: user.id, 
      body: "Really Good product", 
      rating: 5, 
      product_id: product.id 
    )

    expect(another_review).to_not be_valid
  end

  it "should belong to a product" do
    review.product_id = ""
    review.save
    expect(review).to_not be_valid
  end

end
