class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :update, :delete]

  def index
  	@reviews = Product.find(params[:product_id]).reviews.all
  end

  def create

  end

end
