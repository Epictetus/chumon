require 'spec_helper'

describe "products/show" do
  before(:each) do
    @product = assign(:product, stub_model(Product,
      :name => "Name",
      :unit => "Unit",
      :type_number => "Type Number",
      :unit_price => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Unit/)
    rendered.should match(/Type Number/)
    rendered.should match(/1/)
  end
end
