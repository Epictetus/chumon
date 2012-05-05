require "spec_helper"

describe BilledOrdersController do
  describe "routing" do

    it "routes to #index" do
      get("/billed_orders").should route_to("billed_orders#index")
    end

    it "routes to #new" do
      get("/billed_orders/new").should route_to("billed_orders#new")
    end

    it "routes to #show" do
      get("/billed_orders/1").should route_to("billed_orders#show", :id => "1")
    end

    it "routes to #edit" do
      get("/billed_orders/1/edit").should route_to("billed_orders#edit", :id => "1")
    end

    it "routes to #create" do
      post("/billed_orders").should route_to("billed_orders#create")
    end

    it "routes to #update" do
      put("/billed_orders/1").should route_to("billed_orders#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/billed_orders/1").should route_to("billed_orders#destroy", :id => "1")
    end

  end
end
