require 'spec_helper'

describe Account do
  describe "roles" do
    describe "predicates" do
      context "role_customer?" do
        before :each do
          @account = FactoryGirl.create(:account)
          @account.roles << Role::RoleCustomer.first
        end

        it "should be true" do
          @account.role_customer?.should be_true
        end
      end

      context "product_manager?" do
        before :each do
          @account = FactoryGirl.create(:account)
          @account.roles << Role::ProductManager.first
        end

        it "should be true" do
          @account.product_manager?.should be_true
        end
      end

      context "account_manager?" do
        before :each do
          @account = FactoryGirl.create(:account)
          @account.roles << Role::AccountManager.first
        end

        it "should be true" do
          @account.account_manager?.should be_true
        end
      end

      context "delivery_operator?" do
        before :each do
          @account = FactoryGirl.create(:account)
          @account.roles << Role::DeliveryOperator.first
        end

        it "should be true" do
          @account.delivery_operator?.should be_true
        end
      end

      context "administrator?" do
        before :each do
          @account = FactoryGirl.create(:account)
          @account.roles << Role::Administrator.first
        end

        it "should be true" do
          @account.administrator?.should be_true
        end
      end

    end
  end
end
