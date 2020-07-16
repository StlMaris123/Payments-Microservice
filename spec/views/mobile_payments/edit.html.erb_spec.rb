require 'rails_helper'

RSpec.describe "mobile_payments/edit", type: :view do
  before(:each) do
    @mobile_payment = assign(:mobile_payment, MobilePayment.create!(
      amount: 1.5,
      till_number: 1,
      reason_for_payment: "MyText"
    ))
  end

  it "renders the edit mobile_payment form" do
    render

    assert_select "form[action=?][method=?]", mobile_payment_path(@mobile_payment), "post" do

      assert_select "input[name=?]", "mobile_payment[amount]"

      assert_select "input[name=?]", "mobile_payment[till_number]"

      assert_select "textarea[name=?]", "mobile_payment[reason_for_payment]"
    end
  end
end
