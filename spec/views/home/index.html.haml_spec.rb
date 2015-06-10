require 'rails_helper'

RSpec.describe "home/index.html.haml", type: :view do
  it "shows page title" do
 	render
  	assert_select "h1", :text => "Welcome to the Home Page".to_s
  end
end
