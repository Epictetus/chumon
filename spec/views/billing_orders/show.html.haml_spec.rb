require 'spec_helper'

describe "received_orders/show" do
  before(:each) do
    @received_order = assign(:received_order, stub_model(ReceivedOrder))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
