require 'rails_helper'

description = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum elementum varius sollicitudin. Nunc id libero vel orci ornare gravida. Quisque dapibus augue eget nunc ornare, sed malesuada lorem gravida. Donec non porttitor turpis laoreet. Ut faucibus tempus ultrices. Cras in laoreet dui. In hac habitasse platea dictumst."

RSpec.describe "products/index", type: :view do
  before(:each) do
    assign(:products, [
      Product.create!(
        :name => "Name",
        :description => description,
        :price => 1.5
      ),
      Product.create!(
        :name => "Name",
        :description => description,
        :price => 1.5
      )
    ])
  end

  it "renders a list of products" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "#{description.slice(0,120)} ...".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
