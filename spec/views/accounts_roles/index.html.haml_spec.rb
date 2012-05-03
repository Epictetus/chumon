require 'spec_helper'

describe "accounts_roles/index" do
  before(:each) do
    assign(:accounts_roles, [
      stub_model(AccountsRole,
        :account_id => 1,
        :role_id => 2
      ),
      stub_model(AccountsRole,
        :account_id => 1,
        :role_id => 2
      )
    ])
  end

  it "renders a list of accounts_roles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
