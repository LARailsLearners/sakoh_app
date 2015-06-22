require 'rails_helper'

RSpec.describe Review, type: :model do
  
  let(:user) { create(:user) }
  
  let(:product) { user.products.create(attributes_for(:product) ) }
  
  let(:review) do
    review = product.reviews.build( attributes_for(:review) )
    review.user_id = user.id 
    review
  end

  it "should have body" do
  	review.body = ""
  	review.save 
  	expect(review).to_not be_valid
  end

  it "should have an author" do
    review.user_id = ""
    review.save 
    expect(review).to_not be_valid
  end

  it "should belong to a product" do
    review.product_id = ""
    review.save 
    expect(review).to_not be_valid
  end

end
