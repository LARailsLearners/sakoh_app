require 'rails_helper'

RSpec.describe User, type: :model do

  it "create new user" do

    user = create(:user)

    expect(User.all).to include(user)

  end

  it "should have products" do
	  user = create(:user)
	  product = build(:product)
	  product.user_id = user.id
	  product.save 
	  expect(user.products).to include(product)
  end

end
