require 'rails_helper'

RSpec.describe "/home/users/show.html.erb", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :first_name => "MyText",
      :last_name => "MyText",
      :email => "mytest@example.com",
      :password => "12345678910"
    ))

  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/), count: 2
    expect(rendered).to match(/mytest@example.com/)
  end
end
