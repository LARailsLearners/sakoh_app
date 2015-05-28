require 'rails_helper'
require 'factories/users'

RSpec.describe User, type: :model do

  it "create new user" do

    user = create(:user)

    expect(User.all).to include(user)

  end

end
