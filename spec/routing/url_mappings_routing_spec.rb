require "rails_helper"

RSpec.describe UrlMappingsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/url_mappings").to route_to("url_mappings#index")
    end

    it "routes to #new" do
      expect(:get => "/url_mappings/new").to route_to("url_mappings#new")
    end

    it "routes to #show" do
      expect(:get => "/url_mappings/1").to route_to("url_mappings#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/url_mappings/1/edit").to route_to("url_mappings#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/url_mappings").to route_to("url_mappings#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/url_mappings/1").to route_to("url_mappings#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/url_mappings/1").to route_to("url_mappings#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/url_mappings/1").to route_to("url_mappings#destroy", :id => "1")
    end
  end
end
