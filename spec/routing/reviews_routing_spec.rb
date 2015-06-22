require "rails_helper"

RSpec.describe ReviewsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/products/1/reviews").to route_to("reviews#index", product_id: "1" )
    end

    it "routes to #show" do
      expect(:get => "/products/1/reviews/1").to route_to("reviews#show",{ product_id: "1", id: "1"})
    end

    it "routes to #create" do
      expect(:post => "/products/1/reviews").to route_to("reviews#create", product_id: "1")
    end

    it "routes to #update" do
      expect(:put => "/products/1/reviews/1").to route_to("reviews#update", {product_id: "1", id: "1"})
    end

    it "routes to #destroy" do
      expect(:delete => "/products/1/reviews/1").to route_to("reviews#destroy", {product_id: "1", id: "1"})
    end

  end
end
