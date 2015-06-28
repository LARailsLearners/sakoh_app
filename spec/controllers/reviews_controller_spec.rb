require 'rails_helper'
require 'support/controller_helpers'

RSpec.describe ReviewsController, type: :controller do

  let(:user) { create(:user) }

  let(:product) { user.products.create(attributes_for(:product)) }

  let(:review_attrs) { { body: "Hello", user_id: user.id } }

  let(:review) { product.reviews.create(review_attrs) }

  describe "Get #index" do
    it "assigns the requested review as @reviews" do
      get :index, { product_id: product.id, format: :json }
      expect(response).to be_success
      expect(assigns(:reviews)).to eq([review])
    end
  end

  describe "Get #show" do
    it "assigns the requested review as @review" do
      get :show, { product_id: product.id, id: review.id, format: :json }
      expect(response).to be_success
      expect(assigns(:review)).to eq(review)
    end
  end

  describe "POST #create" do

    it "should fail to add a new review without authorization" do
      sign_in nil
      expect {
        post :create, {:review => review_attrs, product_id: product.id, format: :json }
      }.to change(Review, :count).by(0)
    end

    it "creates a new review with authorization" do
      sign_in user
      expect {
        post :create, {:review => review_attrs, product_id: product.id, format: :json }
      }.to change(Review, :count).by(1)
    end

  end

end
