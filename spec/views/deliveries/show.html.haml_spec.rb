require 'spec_helper'

describe "deliveries/show" do
  before(:each) do
    @delivery = assign(:delivery, stub_model(Delivery,
      :order_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
