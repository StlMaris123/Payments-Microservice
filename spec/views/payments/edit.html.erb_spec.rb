require 'rails_helper'

RSpec.describe "payments/edit", type: :view do
  before(:each) do
    @payment = assign(:payment, Payment.create!(
      user: nil,
      productName: "MyString",
      from_bank_account: "MyString",
      from_account_name: "MyString",
      from_account_number: "MyString",
      from_bank_code: "MyString",
      from_currency: "MyString",
      amount: 1.5,
      description: "MyString",
      to_bank_account: "MyString",
      to_account_number: "MyString",
      to_account_name: "MyString",
      to_bank_code: "MyString",
      to_currency_code: "MyString"
    ))
  end

  it "renders the edit payment form" do
    render

    assert_select "form[action=?][method=?]", payment_path(@payment), "post" do

      assert_select "input[name=?]", "payment[user_id]"

      assert_select "input[name=?]", "payment[productName]"

      assert_select "input[name=?]", "payment[from_bank_account]"

      assert_select "input[name=?]", "payment[from_account_name]"

      assert_select "input[name=?]", "payment[from_account_number]"

      assert_select "input[name=?]", "payment[from_bank_code]"

      assert_select "input[name=?]", "payment[from_currency]"

      assert_select "input[name=?]", "payment[amount]"

      assert_select "input[name=?]", "payment[description]"

      assert_select "input[name=?]", "payment[to_bank_account]"

      assert_select "input[name=?]", "payment[to_account_number]"

      assert_select "input[name=?]", "payment[to_account_name]"

      assert_select "input[name=?]", "payment[to_bank_code]"

      assert_select "input[name=?]", "payment[to_currency_code]"
    end
  end
end
