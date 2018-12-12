require "rails_helper"

RSpec.describe WastesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/wastes").to route_to("wastes#index")
    end

    it "routes to #new" do
      expect(:get => "/wastes/new").to route_to("wastes#new")
    end

    it "routes to #show" do
      expect(:get => "/wastes/1").to route_to("wastes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/wastes/1/edit").to route_to("wastes#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/wastes").to route_to("wastes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/wastes/1").to route_to("wastes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/wastes/1").to route_to("wastes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/wastes/1").to route_to("wastes#destroy", :id => "1")
    end
  end
end
