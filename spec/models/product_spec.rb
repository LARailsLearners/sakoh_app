require 'rails_helper'

RSpec.describe Product, type: :model do

  it "should belong to a user" do
  	@product = Product.new
	@user = User.new
	@product.user = @user
	expect(@user).to has_many @products
  end

end
