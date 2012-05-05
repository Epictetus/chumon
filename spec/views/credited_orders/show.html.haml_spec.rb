require 'spec_helper'

describe "credited_orders/show" do
  before(:each) do
    @credited_order = assign(:credited_order, stub_model(CreditedOrder))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
