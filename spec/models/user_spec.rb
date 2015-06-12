require 'rails_helper'

RSpec.describe User, type: :model do

  it "create new user" do

    user = create(:user)

    expect(User.all).to include(user)

  end

  it "should have products" do
  	@product = Product.new
	  @user = User.new
	  @user.products << @product
	  expect(@product).to belongs_to @user
  end

end
