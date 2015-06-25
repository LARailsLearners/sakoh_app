require 'rails_helper'
require 'support/controller_helpers'

RSpec.describe ReviewsController, type: :controller do
  
  let(:user) { create(:user) }

  let(:product) { user.products.create(attributes_for(:product)) }

  let(:review_attrs) { Hash[attributes_for(:review), user_id: user.id] }

  let(:review) do
  	review = product.reviews.build(review_attrs)
  end

  it "assigns the requested review as @reviews" do
    get :index, { product_id: product.id }
    expect(response).to be_success
    expect(assigns(:reviews)).to eq([review])
  end

  describe "POST #create" do

    it "should fail to add a new review without authorization" do
      sign_in nil
      expect {
        post :create, {:review => review }
      }.to change(Review, :count).by(0)
    end

    it "creates a new review with authorization" do
      sign_in user
      expect {
        post :create, {:review => review_attrs }
      }.to change(Review, :count).by(1)
    end

    it "assigns a newly created product as @product" do
      sign_in user
      post :create, {:review => review_attrs}
      expect(assigns(:review)).to be_a(Review)
      expect(assigns(:review)).to be_persisted
    end

  end

  describe "GET #show" do

    it "assigns the requested review as @review" do
      get :show, {:id => review.to_param, :product_id => product.id }
      expect(assigns(:review)).to eq(review)
    end

  end

end
