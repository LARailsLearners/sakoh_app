require 'rails_helper'

RSpec.describe Product, type: :model do
	it "should have an image" do
	  product = create(:product)
	  expect(product.image).to eq(product.image)
	end
end
