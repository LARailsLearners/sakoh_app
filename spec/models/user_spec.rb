require 'rails_helper'

RSpec.describe User, type: :model do

  it "create new user" do

    user = create(:user)

    expect(User.all).to include(user)

  end

  it "should have products" do
	  relationship = User.reflect_on_association(:products)
    expect(relationship).to eq(:has_many) 
  end

end
