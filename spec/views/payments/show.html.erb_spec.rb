require 'rails_helper'

RSpec.describe "payments/show", type: :view do
  before(:each) do
    @payment = assign(:payment, Payment.create!(
      user: nil,
      token: "Token",
      charge_id: "Charge",
      error_message: "Error Message",
      payment_gateway: 2,
      amount: 3.5,
      paypal_plan_name: "Paypal Plan Name",
      description: "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Token/)
    expect(rendered).to match(/Charge/)
    expect(rendered).to match(/Error Message/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3.5/)
    expect(rendered).to match(/Paypal Plan Name/)
    expect(rendered).to match(/Description/)
  end
end
