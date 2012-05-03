require 'spec_helper'

describe "accounts_roles/show" do
  before(:each) do
    @accounts_role = assign(:accounts_role, stub_model(AccountsRole,
      :account_id => 1,
      :role_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
