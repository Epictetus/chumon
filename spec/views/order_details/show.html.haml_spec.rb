require 'spec_helper'

describe "order_details/show" do
  before(:each) do
    @order_detail = assign(:order_detail, stub_model(OrderDetail,
      :product_id => 1,
      :order_id => 2,
      :unit_price => 3,
      :quantity => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
  end
end
