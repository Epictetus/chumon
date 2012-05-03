require "spec_helper"

describe DeliveriesController do
  describe "routing" do

    it "routes to #index" do
      get("/deliveries").should route_to("deliveries#index")
    end

    it "routes to #new" do
      get("/deliveries/new").should route_to("deliveries#new")
    end

    it "routes to #show" do
      get("/deliveries/1").should route_to("deliveries#show", :id => "1")
    end

    it "routes to #edit" do
      get("/deliveries/1/edit").should route_to("deliveries#edit", :id => "1")
    end

    it "routes to #create" do
      post("/deliveries").should route_to("deliveries#create")
    end

    it "routes to #update" do
      put("/deliveries/1").should route_to("deliveries#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/deliveries/1").should route_to("deliveries#destroy", :id => "1")
    end

  end
end
