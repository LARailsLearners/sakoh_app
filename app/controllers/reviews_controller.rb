class ReviewsController < ApplicationController
  before_action :set_reviews, only: [:index, :show, :update, :create, :set_policy, :destroy ]
  before_action :authenticate_user!, only: [:create, :update, :destroy]
  authorize_resource only: [:update, :destroy]

  # GET /products/1/reviews
  # GET /products/1/reviews.json
  def index
  end

  # GET /products/1/reviews/1
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
      if @review.update(review_params)
        # format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :index }
      else
        # format.html { render :edit }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    respond_to do |format|
      # format.html { redirect_to @product, notice: 'Product was successfully updated.' }
      @review.destroy
      format.json { render :index }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reviews
      @reviews = Product.find(params[:product_id]).reviews
      @review = @reviews.where(id: params[:id]).first
    end

    def review_params
      params.require(:review).permit(:body, :rating, :user_id, :product_id)
    end

end
