require 'spec_helper'

describe "bills/edit" do
  before(:each) do
    @bill = assign(:bill, stub_model(Bill,
      :order_id => 1
    ))
  end

  it "renders the edit bill form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => bills_path(@bill), :method => "post" do
      assert_select "input#bill_order_id", :name => "bill[order_id]"
    end
  end
end
