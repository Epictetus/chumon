require 'spec_helper'

describe "customers/show" do
  before(:each) do
    @customer = assign(:customer, stub_model(Customer,
      :account_id => 1,
      :customer_name => "Customer Name",
      :company_name => "Company Name",
      :location => "Location",
      :zip_code => "Zip Code",
      :phone => "Phone",
      :fax => "Fax"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Customer Name/)
    rendered.should match(/Company Name/)
    rendered.should match(/Location/)
    rendered.should match(/Zip Code/)
    rendered.should match(/Phone/)
    rendered.should match(/Fax/)
  end
end
