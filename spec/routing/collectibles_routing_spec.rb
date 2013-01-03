require "spec_helper"

describe CollectiblesController do
  describe "routing" do

    it "routes to #index" do
      get("/collectibles").should route_to("collectibles#index")
    end

    it "routes to #new" do
      get("/collectibles/new").should route_to("collectibles#new")
    end

    it "routes to #show" do
      get("/collectibles/1").should route_to("collectibles#show", :id => "1")
    end

    it "routes to #edit" do
      get("/collectibles/1/edit").should route_to("collectibles#edit", :id => "1")
    end

    it "routes to #create" do
      post("/collectibles").should route_to("collectibles#create")
    end

    it "routes to #update" do
      put("/collectibles/1").should route_to("collectibles#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/collectibles/1").should route_to("collectibles#destroy", :id => "1")
    end

  end
end
