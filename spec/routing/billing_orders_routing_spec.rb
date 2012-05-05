require "spec_helper"

describe ReceivedOrdersController do
  describe "routing" do

    it "routes to #index" do
      get("/received_orders").should route_to("received_orders#index")
    end

    it "routes to #new" do
      get("/received_orders/new").should route_to("received_orders#new")
    end

    it "routes to #show" do
      get("/received_orders/1").should route_to("received_orders#show", :id => "1")
    end

    it "routes to #edit" do
      get("/received_orders/1/edit").should route_to("received_orders#edit", :id => "1")
    end

    it "routes to #create" do
      post("/received_orders").should route_to("received_orders#create")
    end

    it "routes to #update" do
      put("/received_orders/1").should route_to("received_orders#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/received_orders/1").should route_to("received_orders#destroy", :id => "1")
    end

  end
end
