require 'spec_helper'

describe "orders/show" do
  before(:each) do
    @order = assign(:order, stub_model(Order,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Order Code/)
    rendered.should match(/Customer Zip Code/)
    rendered.should match(/Constmer Location/)
    rendered.should match(/Delivery Place/)
    rendered.should match(/Customer Name/)
    rendered.should match(/Company Name/)
    rendered.should match(/Company Location/)
    rendered.should match(/Company Zip Code/)
    rendered.should match(/Company Phone/)
    rendered.should match(/Company Fax/)
  end
end
