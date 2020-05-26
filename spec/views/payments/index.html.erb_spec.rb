require 'rails_helper'

RSpec.describe "payments/index", type: :view do
  before(:each) do
    assign(:payments, [
      Payment.create!(
        user: nil,
        token: "Token",
        charge_id: "Charge",
        error_message: "Error Message",
        payment_gateway: 2,
        amount: 3.5,
        paypal_plan_name: "Paypal Plan Name",
        description: "Description"
      ),
      Payment.create!(
        user: nil,
        token: "Token",
        charge_id: "Charge",
        error_message: "Error Message",
        payment_gateway: 2,
        amount: 3.5,
        paypal_plan_name: "Paypal Plan Name",
        description: "Description"
      )
    ])
  end

  it "renders a list of payments" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "Token".to_s, count: 2
    assert_select "tr>td", text: "Charge".to_s, count: 2
    assert_select "tr>td", text: "Error Message".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.5.to_s, count: 2
    assert_select "tr>td", text: "Paypal Plan Name".to_s, count: 2
    assert_select "tr>td", text: "Description".to_s, count: 2
  end
end
