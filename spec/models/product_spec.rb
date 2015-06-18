require 'rails_helper'

RSpec.describe Product, type: :model do
	it "should belong to a user" do
	  user = create(:user)
	  product = build(:product)
	  product.user_id = user.id
	  product.save
	  expect(product.user).to eq(user) 
	end
end
