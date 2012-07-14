require "spec_helper"

describe CatalogsController do
  describe "routing" do

    it "routes to #index" do
      get("/catalogs").should route_to("catalogs#index")
    end

    it "routes to #new" do
      get("/catalogs/new").should route_to("catalogs#new")
    end

    it "routes to #show" do
      get("/catalogs/1").should route_to("catalogs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/catalogs/1/edit").should route_to("catalogs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/catalogs").should route_to("catalogs#create")
    end

    it "routes to #update" do
      put("/catalogs/1").should route_to("catalogs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/catalogs/1").should route_to("catalogs#destroy", :id => "1")
    end

  end
end
