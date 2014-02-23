require "spec_helper"

describe RfqsController do
  describe "routing" do

    it "routes to #index" do
      get("/rfqs").should route_to("rfqs#index")
    end

    it "routes to #new" do
      get("/rfqs/new").should route_to("rfqs#new")
    end

    it "routes to #show" do
      get("/rfqs/1").should route_to("rfqs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/rfqs/1/edit").should route_to("rfqs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/rfqs").should route_to("rfqs#create")
    end

    it "routes to #update" do
      put("/rfqs/1").should route_to("rfqs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/rfqs/1").should route_to("rfqs#destroy", :id => "1")
    end

  end
end
