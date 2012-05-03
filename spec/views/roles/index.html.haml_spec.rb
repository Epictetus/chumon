require 'spec_helper'

describe "roles/index" do
  before(:each) do
    assign(:roles, [
      stub_model(Role,
        :type => "Type"
      ),
      stub_model(Role,
        :type => "Type"
      )
    ])
  end

  it "renders a list of roles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Type".to_s, :count => 2
  end
end
