require 'spec_helper'

describe "billed_orders/show" do
  before(:each) do
    @billed_order = assign(:billed_order, stub_model(BilledOrder))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
