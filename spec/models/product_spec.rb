require 'rails_helper'

RSpec.describe Product, type: :model do
  let(:user) { create(:user) }
  let(:product) { user.products.create(attributes_for :product ) }

  it "should belong to a user" do
  	product.user_id = ""
  	product.save
  	expect(product).to_not be_valid
  end

  it "should a name" do
  	product.name = ""
  	product.save
  	expect(product).to_not be_valid
  end

  it "should not have too short of a name" do
  	product.name = "aa"
  	product.save
  	expect(product).to_not be_valid
  end

  it "should not have too long of a name" do
  	product.name = "a" * 29
  	product.save
  	expect(product).to_not be_valid
  end

  it "should a description" do
  	product.description = ""
  	product.save
  	expect(product).to_not be_valid
  end

  it "should not have too short of a description" do
  	product.description = "a" * 9
  	product.save
  	expect(product).to_not be_valid
  end

  it "should not have too long of a description" do
  	product.description = "a" * 501
  	product.save
  	expect(product).to_not be_valid
  end

  it "should a price" do
  	product.price = ""
  	product.save
  	expect(product).to_not be_valid
  end

end
