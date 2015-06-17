require 'rails_helper'

RSpec.describe "/home/users/index.html.erb", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
      	:first_name => "Jerry",
      	:last_name => "Lewis",
      	:email => "jlewis@example.com",
      	:password => "12345678910"
      ),
      User.create!(
      	:first_name => "John",
      	:last_name => "Brown",
      	:email => "jbrown@example.com",
      	:password => "12345678910"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Jerry".to_s
	assert_select "tr>td", :text => "Lewis".to_s
    assert_select "tr>td", :text => "jlewis@example.com".to_s

    assert_select "tr>td", :text => "John".to_s
	assert_select "tr>td", :text => "Brown".to_s
    assert_select "tr>td", :text => "jbrown@example.com".to_s
  end
end
