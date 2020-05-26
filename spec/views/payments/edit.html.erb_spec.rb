require 'rails_helper'

RSpec.describe "payments/edit", type: :view do
  before(:each) do
    @payment = assign(:payment, Payment.create!(
      user: nil,
      token: "MyString",
      charge_id: "MyString",
      error_message: "MyString",
      payment_gateway: 1,
      amount: 1.5,
      paypal_plan_name: "MyString",
      description: "MyString"
    ))
  end

  it "renders the edit payment form" do
    render

    assert_select "form[action=?][method=?]", payment_path(@payment), "post" do

      assert_select "input[name=?]", "payment[user_id]"

      assert_select "input[name=?]", "payment[token]"

      assert_select "input[name=?]", "payment[charge_id]"

      assert_select "input[name=?]", "payment[error_message]"

      assert_select "input[name=?]", "payment[payment_gateway]"

      assert_select "input[name=?]", "payment[amount]"

      assert_select "input[name=?]", "payment[paypal_plan_name]"

      assert_select "input[name=?]", "payment[description]"
    end
  end
end
