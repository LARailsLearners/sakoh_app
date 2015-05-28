require 'rails_helper'

RSpec.describe User, type: :model do

  it "create new user" do

    	user = User.new(
    		id: 1,
    		first_name: "Sako",
    		last_name: "Hartounian", 
    		email: "sakohartounian@yahoo.com", 
    		password: "12345", 
    		password_confirmation: "12345"
    	)

    	user.save

    	expect(User.find_by(email: "sakohartounian@yahoo.com")).to all(user)

	end

end
