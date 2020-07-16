require "rails_helper"

RSpec.describe MobilePaymentsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/mobile_payments").to route_to("mobile_payments#index")
    end

    it "routes to #new" do
      expect(get: "/mobile_payments/new").to route_to("mobile_payments#new")
    end

    it "routes to #show" do
      expect(get: "/mobile_payments/1").to route_to("mobile_payments#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/mobile_payments/1/edit").to route_to("mobile_payments#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/mobile_payments").to route_to("mobile_payments#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/mobile_payments/1").to route_to("mobile_payments#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/mobile_payments/1").to route_to("mobile_payments#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/mobile_payments/1").to route_to("mobile_payments#destroy", id: "1")
    end
  end
end
