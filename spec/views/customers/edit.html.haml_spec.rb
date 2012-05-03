require 'spec_helper'

describe "customers/edit" do
  before(:each) do
    @customer = assign(:customer, stub_model(Customer,
      :account_id => 1,
      :customer_name => "MyString",
      :company_name => "MyString",
      :location => "MyString",
      :zip_code => "MyString",
      :phone => "MyString",
      :fax => "MyString"
    ))
  end

  it "renders the edit customer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => customers_path(@customer), :method => "post" do
      assert_select "input#customer_account_id", :name => "customer[account_id]"
      assert_select "input#customer_customer_name", :name => "customer[customer_name]"
      assert_select "input#customer_company_name", :name => "customer[company_name]"
      assert_select "input#customer_location", :name => "customer[location]"
      assert_select "input#customer_zip_code", :name => "customer[zip_code]"
      assert_select "input#customer_phone", :name => "customer[phone]"
      assert_select "input#customer_fax", :name => "customer[fax]"
    end
  end
end
