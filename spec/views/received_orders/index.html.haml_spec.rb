require 'spec_helper'

describe "received_orders/index" do
  before(:each) do
    assign(:received_orders, [
      stub_model(ReceivedOrder),
      stub_model(ReceivedOrder)
    ])
  end

  it "renders a list of received_orders" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
