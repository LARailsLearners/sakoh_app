class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :update, :delete]

  def index
  	@reviews = Review.where(params[:product_id])
  end

  def create

  end

end
