class ReviewsController < ApplicationController
  before_action :set_reviews, only: [:index, :show, :create]
  before_action :set_review, only: [:show, :update]
  before_action :authenticate_user!, only: [:create, :update, :delete]
  before_action :set_policy, only: [:update, :destroy]

  # GET /products/1/reviews.json
  def index
  end

  # GET /products/1/reviews/1.json
  def show
  end

  # POST /products/1/reviews
  # POST /products/1/reviews.json
  def create
    @review = @reviews.build(review_params)

    respond_to do |format|
      if @review.save
        format.json { render :index }
      else
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reviews/1
  # PATCH/PUT /reviews/1.json
  def update
    respond_to do |format|
      if @review.update(review_params) && @policy.update?
        # format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :index }
      else
        # format.html { render :edit }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reviews
      @reviews = Product.find(params[:product_id]).reviews
    end

    def set_review
      @review = Product.find(params[:product_id]).reviews.where(id: params[:id]).first
    end

    def review_params
      params.require(:review).permit(:body, :rating, :user_id, :product_id)
    end

    # Determines which users can perform which actions
    def set_policy
      @policy = ApplicationPolicy.new(
        current_user, 
        Product.find(params[:product_id]).reviews.where(id: params[:id]).first
      )
    end
end
