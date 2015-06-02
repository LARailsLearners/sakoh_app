require 'rails_helper'

describe "the signup process", :type => :feature do
  before :each do
    user = build(:user)
  end

  it "signs me up" do
    visit '/users/sign_up'
    within("#new_user") do
      fill_in 'First name', with: user.first_name
      fill_in 'last name', with: user.last_name
      fill_in 'Email', with: user.email
      fill_in 'Password', with: user.password
      fill_in 'Password confirmation', with: user.password
    end
    click_button 'Sign up'
    expect(page).to have_content "#{user.first_name} #{user.last_name}"
  end
end