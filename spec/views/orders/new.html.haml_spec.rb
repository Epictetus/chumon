require 'spec_helper'

describe "orders/new" do
  before(:each) do
    assign(:order, stub_model(Order,
      :account_id => 1,
      :order_code => "MyString",
      :customer_zip_code => "MyString",
      :constmer_location => "MyString",
      :delivery_place => "MyString",
      :customer_name => "MyString",
      :company_name => "MyString",
      :company_location => "MyString",
      :company_zip_code => "MyString",
      :company_phone => "MyString",
      :company_fax => "MyString"
    ).as_new_record)
  end

  it "renders new order form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => orders_path, :method => "post" do
      assert_select "input#order_account_id", :name => "order[account_id]"
      assert_select "input#order_order_code", :name => "order[order_code]"
      assert_select "input#order_customer_zip_code", :name => "order[customer_zip_code]"
      assert_select "input#order_constmer_location", :name => "order[constmer_location]"
      assert_select "input#order_delivery_place", :name => "order[delivery_place]"
      assert_select "input#order_customer_name", :name => "order[customer_name]"
      assert_select "input#order_company_name", :name => "order[company_name]"
      assert_select "input#order_company_location", :name => "order[company_location]"
      assert_select "input#order_company_zip_code", :name => "order[company_zip_code]"
      assert_select "input#order_company_phone", :name => "order[company_phone]"
      assert_select "input#order_company_fax", :name => "order[company_fax]"
    end
  end
end
