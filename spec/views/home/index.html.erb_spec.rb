require 'rails_helper'

RSpec.describe "home/index.html.erb", type: :view do
  it "shows page title" do
 	render
  	assert_select "h1", :text => "Welcome to Sell Space".to_s
  end
end
