class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :update, :delete]

  def index
  	@reviews = Review.find_all_by_product_id params[:product_id]
  end

  def create

  end

end
