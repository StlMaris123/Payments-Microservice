require 'rails_helper'

RSpec.describe "mobile_payments/index", type: :view do
  before(:each) do
    assign(:mobile_payments, [
      MobilePayment.create!(
        amount: 2.5,
        till_number: 3,
        reason_for_payment: "MyText"
      ),
      MobilePayment.create!(
        amount: 2.5,
        till_number: 3,
        reason_for_payment: "MyText"
      )
    ])
  end

  it "renders a list of mobile_payments" do
    render
    assert_select "tr>td", text: 2.5.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
