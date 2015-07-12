require 'rails_helper'

RSpec.describe User, type: :model do

  let(:user) { create(:user) }

  it "should require a first name" do
	  user.first_name = ''
    user.save
    expect(user).to_not be_valid
  end

  it "should specify whether or not user is admin" do
    user.admin = nil
    user.save
    expect(user).to be_valid
  end

  it "should not have too short of a first name" do
    user.first_name = 'a' 
    user.save
    expect(user).to_not be_valid
  end

  it "should not have too long of a first name" do
    user.first_name = 'a' * 51 
    user.save
    expect(user).to_not be_valid
  end

  it "should require a last name" do
    user.last_name = ''
    user.save
    expect(user).to_not be_valid
  end

  it "should not have too short of a last name" do
    user.last_name = 'a' 
    user.save
    expect(user).to_not be_valid
  end

  it "should not have too long of a last name" do
    user.last_name = 'a' * 101
    user.save
    expect(user).to_not be_valid
  end

end
