require 'rails_helper'

RSpec.describe "products/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :first_name => "MyText",
      :last_name => "MyText",
      :email => "mytest@example.com",
      :password => "12345678910"
    ))

    @product = assign(:product, Product.create!(
      :name => "Name",
      :description => "MyText",
      :price => 1.5,
      :user_id => @user.id
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1.5/)
  end
end
