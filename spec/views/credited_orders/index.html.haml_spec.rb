require 'spec_helper'

describe "credited_orders/index" do
  before(:each) do
    assign(:credited_orders, [
      stub_model(CreditedOrder),
      stub_model(CreditedOrder)
    ])
  end

  it "renders a list of credited_orders" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
