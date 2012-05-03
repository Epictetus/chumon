require 'spec_helper'

describe "products/index" do
  before(:each) do
    assign(:products, [
      stub_model(Product,
        :name => "Name",
        :unit_price => 1,
        :serial_number => "Serial Number"
      ),
      stub_model(Product,
        :name => "Name",
        :unit_price => 1,
        :serial_number => "Serial Number"
      )
    ])
  end

  it "renders a list of products" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Serial Number".to_s, :count => 2
  end
end
