require "spec_helper"

describe MonthliesController do
  describe "routing" do

    it "routes to #index" do
      get("/monthlies").should route_to("monthlies#index")
    end

    it "routes to #new" do
      get("/monthlies/new").should route_to("monthlies#new")
    end

    it "routes to #show" do
      get("/monthlies/1").should route_to("monthlies#show", :id => "1")
    end

    it "routes to #edit" do
      get("/monthlies/1/edit").should route_to("monthlies#edit", :id => "1")
    end

    it "routes to #create" do
      post("/monthlies").should route_to("monthlies#create")
    end

    it "routes to #update" do
      put("/monthlies/1").should route_to("monthlies#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/monthlies/1").should route_to("monthlies#destroy", :id => "1")
    end

  end
end
