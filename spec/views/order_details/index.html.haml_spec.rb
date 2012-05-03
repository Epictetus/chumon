require 'spec_helper'

describe "order_details/index" do
  before(:each) do
    assign(:order_details, [
      stub_model(OrderDetail,
        :product_id => 1,
        :order_id => 2,
        :unit_price => 3,
        :quantity => 4
      ),
      stub_model(OrderDetail,
        :product_id => 1,
        :order_id => 2,
        :unit_price => 3,
        :quantity => 4
      )
    ])
  end

  it "renders a list of order_details" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
