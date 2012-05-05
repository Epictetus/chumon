require "spec_helper"

describe CreditedOrdersController do
  describe "routing" do

    it "routes to #index" do
      get("/credited_orders").should route_to("credited_orders#index")
    end

    it "routes to #new" do
      get("/credited_orders/new").should route_to("credited_orders#new")
    end

    it "routes to #show" do
      get("/credited_orders/1").should route_to("credited_orders#show", :id => "1")
    end

    it "routes to #edit" do
      get("/credited_orders/1/edit").should route_to("credited_orders#edit", :id => "1")
    end

    it "routes to #create" do
      post("/credited_orders").should route_to("credited_orders#create")
    end

    it "routes to #update" do
      put("/credited_orders/1").should route_to("credited_orders#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/credited_orders/1").should route_to("credited_orders#destroy", :id => "1")
    end

  end
end
