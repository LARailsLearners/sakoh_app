class ReviewsController < ApplicationController
  before_action :set_reviews, only: [:index, :show, :create]
  before_action :authenticate_user!, only: [:create, :update, :delete]

  def index
  end

  def show
    @review = @reviews.where(id: params[:id]).first
  end

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

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reviews
      @reviews = Product.find(params[:product_id]).reviews
    end

    def review_params
      params.require(:review).permit(:body, :user_id, :product_id)
    end
end
