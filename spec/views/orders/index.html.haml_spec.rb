require 'spec_helper'

describe "orders/index" do
  before(:each) do
    assign(:orders, [
      stub_model(Order,
        :account_id => 1,
        :order_code => "Order Code",
        :customer_zip_code => "Customer Zip Code",
        :constmer_location => "Constmer Location",
        :delivery_place => "Delivery Place",
        :customer_name => "Customer Name",
        :company_name => "Company Name",
        :company_location => "Company Location",
        :company_zip_code => "Company Zip Code",
        :company_phone => "Company Phone",
        :company_fax => "Company Fax"
      ),
      stub_model(Order,
        :account_id => 1,
        :order_code => "Order Code",
        :customer_zip_code => "Customer Zip Code",
        :constmer_location => "Constmer Location",
        :delivery_place => "Delivery Place",
        :customer_name => "Customer Name",
        :company_name => "Company Name",
        :company_location => "Company Location",
        :company_zip_code => "Company Zip Code",
        :company_phone => "Company Phone",
        :company_fax => "Company Fax"
      )
    ])
  end

  it "renders a list of orders" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Order Code".to_s, :count => 2
    assert_select "tr>td", :text => "Customer Zip Code".to_s, :count => 2
    assert_select "tr>td", :text => "Constmer Location".to_s, :count => 2
    assert_select "tr>td", :text => "Delivery Place".to_s, :count => 2
    assert_select "tr>td", :text => "Customer Name".to_s, :count => 2
    assert_select "tr>td", :text => "Company Name".to_s, :count => 2
    assert_select "tr>td", :text => "Company Location".to_s, :count => 2
    assert_select "tr>td", :text => "Company Zip Code".to_s, :count => 2
    assert_select "tr>td", :text => "Company Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Company Fax".to_s, :count => 2
  end
end
