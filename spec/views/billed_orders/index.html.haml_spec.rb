require 'spec_helper'

describe "billed_orders/index" do
  before(:each) do
    assign(:billed_orders, [
      stub_model(BilledOrder),
      stub_model(BilledOrder)
    ])
  end

  it "renders a list of billed_orders" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
