require 'spec_helper'

describe "products/edit" do
  before(:each) do
    @product = assign(:product, stub_model(Product,
      :name => "MyString",
      :unit => "MyString",
      :type_number => "MyString",
      :unit_price => 1
    ))
  end

  it "renders the edit product form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => products_path(@product), :method => "post" do
      assert_select "input#product_name", :name => "product[name]"
      assert_select "input#product_unit", :name => "product[unit]"
      assert_select "input#product_type_number", :name => "product[type_number]"
      assert_select "input#product_unit_price", :name => "product[unit_price]"
    end
  end
end
