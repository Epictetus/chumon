require 'spec_helper'

describe "products/new" do
  before(:each) do
    assign(:product, stub_model(Product,
      :name => "MyString",
      :unit => "MyString",
      :type_number => "MyString",
      :unit_price => 1
    ).as_new_record)
  end

  it "renders new product form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => products_path, :method => "post" do
      assert_select "input#product_name", :name => "product[name]"
      assert_select "input#product_unit", :name => "product[unit]"
      assert_select "input#product_type_number", :name => "product[type_number]"
      assert_select "input#product_unit_price", :name => "product[unit_price]"
    end
  end
end
