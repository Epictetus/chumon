require 'spec_helper'

describe "deliveries/new" do
  before(:each) do
    assign(:delivery, stub_model(Delivery,
      :order_id => 1
    ).as_new_record)
  end

  it "renders new delivery form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => deliveries_path, :method => "post" do
      assert_select "input#delivery_order_id", :name => "delivery[order_id]"
    end
  end
end
