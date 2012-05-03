require 'spec_helper'

describe "order_details/new" do
  before(:each) do
    assign(:order_detail, stub_model(OrderDetail,
      :product_id => 1,
      :order_id => 1,
      :unit_price => 1,
      :quantity => 1
    ).as_new_record)
  end

  it "renders new order_detail form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => order_details_path, :method => "post" do
      assert_select "input#order_detail_product_id", :name => "order_detail[product_id]"
      assert_select "input#order_detail_order_id", :name => "order_detail[order_id]"
      assert_select "input#order_detail_unit_price", :name => "order_detail[unit_price]"
      assert_select "input#order_detail_quantity", :name => "order_detail[quantity]"
    end
  end
end
