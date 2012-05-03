require 'spec_helper'

describe "accounts_roles/new" do
  before(:each) do
    assign(:accounts_role, stub_model(AccountsRole,
      :account_id => 1,
      :role_id => 1
    ).as_new_record)
  end

  it "renders new accounts_role form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => accounts_roles_path, :method => "post" do
      assert_select "input#accounts_role_account_id", :name => "accounts_role[account_id]"
      assert_select "input#accounts_role_role_id", :name => "accounts_role[role_id]"
    end
  end
end
