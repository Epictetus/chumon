require 'spec_helper'

describe "bills/new" do
  before(:each) do
    assign(:bill, stub_model(Bill,
      :order_id => 1
    ).as_new_record)
  end

  it "renders new bill form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => bills_path, :method => "post" do
      assert_select "input#bill_order_id", :name => "bill[order_id]"
    end
  end
end
