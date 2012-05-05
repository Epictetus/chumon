require 'spec_helper'

describe "received_orders/edit" do
  before(:each) do
    @received_order = assign(:received_order, stub_model(ReceivedOrder))
  end

  it "renders the edit received_order form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => received_orders_path(@received_order), :method => "post" do
    end
  end
end
