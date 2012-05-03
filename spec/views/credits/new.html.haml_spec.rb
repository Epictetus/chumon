require 'spec_helper'

describe "credits/new" do
  before(:each) do
    assign(:credit, stub_model(Credit,
      :order_id => 1
    ).as_new_record)
  end

  it "renders new credit form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => credits_path, :method => "post" do
      assert_select "input#credit_order_id", :name => "credit[order_id]"
    end
  end
end
