require 'rails_helper'

RSpec.describe ReviewsController, type: :controller do
  
  let(:user) { create(:user) }

  let(:product) { user.products.create(attributes_for(:product)) }

  let(:review) do
  	review = product.reviews.build(attributes_for(:review))
  	review.user_id = user.id
  	review.save
  	review
  end

  it "assigns the requested review as @reviews" do
    get :index, { product_id: product.id }
    expect(response).to be_success
    expect(assigns(:reviews)).to eq([review])
  end

end
