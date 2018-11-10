require "rails_helper"

RSpec.describe FavosController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/favos").to route_to("favos#index")
    end

    it "routes to #show" do
      expect(:get => "/favos/1").to route_to("favos#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/favos").to route_to("favos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/favos/1").to route_to("favos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/favos/1").to route_to("favos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/favos/1").to route_to("favos#destroy", :id => "1")
    end
  end
end
