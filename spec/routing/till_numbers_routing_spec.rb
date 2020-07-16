require "rails_helper"

RSpec.describe TillNumbersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/till_numbers").to route_to("till_numbers#index")
    end

    it "routes to #new" do
      expect(get: "/till_numbers/new").to route_to("till_numbers#new")
    end

    it "routes to #show" do
      expect(get: "/till_numbers/1").to route_to("till_numbers#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/till_numbers/1/edit").to route_to("till_numbers#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/till_numbers").to route_to("till_numbers#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/till_numbers/1").to route_to("till_numbers#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/till_numbers/1").to route_to("till_numbers#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/till_numbers/1").to route_to("till_numbers#destroy", id: "1")
    end
  end
end
