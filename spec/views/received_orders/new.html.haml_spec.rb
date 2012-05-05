require 'spec_helper'

describe "received_orders/new" do
  before(:each) do
    assign(:received_order, stub_model(ReceivedOrder).as_new_record)
  end

  it "renders new received_order form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => received_orders_path, :method => "post" do
    end
  end
end
