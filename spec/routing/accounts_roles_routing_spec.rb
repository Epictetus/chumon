require "spec_helper"

describe AccountsRolesController do
  describe "routing" do

    it "routes to #index" do
      get("/accounts_roles").should route_to("accounts_roles#index")
    end

    it "routes to #new" do
      get("/accounts_roles/new").should route_to("accounts_roles#new")
    end

    it "routes to #show" do
      get("/accounts_roles/1").should route_to("accounts_roles#show", :id => "1")
    end

    it "routes to #edit" do
      get("/accounts_roles/1/edit").should route_to("accounts_roles#edit", :id => "1")
    end

    it "routes to #create" do
      post("/accounts_roles").should route_to("accounts_roles#create")
    end

    it "routes to #update" do
      put("/accounts_roles/1").should route_to("accounts_roles#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/accounts_roles/1").should route_to("accounts_roles#destroy", :id => "1")
    end

  end
end
