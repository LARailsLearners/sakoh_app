class ReviewsController < ApplicationController
  before_action :set_product, only: [:index, :create]
  before_action :authenticate_user!, only: [:create, :update, :delete]

  def index
    @reviews = @product.reviews
  end

  def create
    @review = @product.reviews.build(review_params)

    respond_to do |format|
      if @review.save
        #format.html { redirect_to @review, notice: 'Review was successfully created.' }
        format.json { render :index, status: :created, location: @review }
      else
        #format.html { render :new }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:product_id])
    end

    def review_params
      params.require(:review).permit(:body, :user_id, :product_id)
    end
end
