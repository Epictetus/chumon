require 'spec_helper'

describe "customers/index" do
  before(:each) do
    assign(:customers, [
      stub_model(Customer,
        :account_id => 1,
        :customer_name => "Customer Name",
        :company_name => "Company Name",
        :location => "Location",
        :zip_code => "Zip Code",
        :phone => "Phone",
        :fax => "Fax"
      ),
      stub_model(Customer,
        :account_id => 1,
        :customer_name => "Customer Name",
        :company_name => "Company Name",
        :location => "Location",
        :zip_code => "Zip Code",
        :phone => "Phone",
        :fax => "Fax"
      )
    ])
  end

  it "renders a list of customers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Customer Name".to_s, :count => 2
    assert_select "tr>td", :text => "Company Name".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "Zip Code".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Fax".to_s, :count => 2
  end
end
