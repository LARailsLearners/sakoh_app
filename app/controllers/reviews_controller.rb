class ReviewsController < ApplicationController
  before_action :set_product, only: [:index]
  before_action :authenticate_user!, only: [:create, :update, :delete]

  def index
  end

  def create
    @review = @product.build(review_params)

    respond_to do |format|
      if @review.save
        #format.html { redirect_to @review, notice: 'Review was successfully created.' }
        format.json { render :show, status: :created, location: @review }
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
end
