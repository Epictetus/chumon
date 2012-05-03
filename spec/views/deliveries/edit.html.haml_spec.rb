require 'spec_helper'

describe "deliveries/edit" do
  before(:each) do
    @delivery = assign(:delivery, stub_model(Delivery,
      :order_id => 1
    ))
  end

  it "renders the edit delivery form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => deliveries_path(@delivery), :method => "post" do
      assert_select "input#delivery_order_id", :name => "delivery[order_id]"
    end
  end
end
