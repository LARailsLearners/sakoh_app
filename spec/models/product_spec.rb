require 'rails_helper'

RSpec.describe Product, type: :model do

  it "should belong to a user" do
	relationship = Product.reflect_on_association(:user)
    expect(relationship).to eq(:belongs_to) 
  end

end
