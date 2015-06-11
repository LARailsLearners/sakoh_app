require 'rails_helper'

description = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum elementum varius sollicitudin. Nunc id libero vel orci ornare gravida. Quisque dapibus augue eget nunc ornare, sed malesuada lorem gravida. Donec non porttitor turpis laoreet. Ut faucibus tempus ultrices. Cras in laoreet dui. In hac habitasse platea dictumst."

RSpec.describe "products/index", type: :view do
  before(:each) do
    assign(:products, [
      Product.create!(
        :name => "Name 1",
        :description => description,
        :price => 1.50
      ),
      Product.create!(
        :name => "Name 2",
        :description => "Hello World",
        :price => 2.50
      )
    ])
  end

  it "renders a list of products" do
    render
    assert_select "tr>td", :text => "Name 1".to_s
    assert_select "tr>td", :text => "#{description.slice(0,120)} ...".to_s
    assert_select "tr>td", :text => 1.50.to_s

    assert_select "tr>td", :text => "Name 2".to_s
    assert_select "tr>td", :text => "Hello World".to_s
    assert_select "tr>td", :text => 2.50.to_s
  end
end
