require 'rails_helper'

RSpec.describe "payments/index", type: :view do
  before(:each) do
    assign(:payments, [
      Payment.create!(
        user: nil,
        productName: "Product Name",
        from_bank_account: "From Bank Account",
        from_account_name: "From Account Name",
        from_account_number: "From Account Number",
        from_bank_code: "From Bank Code",
        from_currency: "From Currency",
        amount: 2.5,
        description: "Description",
        to_bank_account: "To Bank Account",
        to_account_number: "To Account Number",
        to_account_name: "To Account Name",
        to_bank_code: "To Bank Code",
        to_currency_code: "To Currency Code"
      ),
      Payment.create!(
        user: nil,
        productName: "Product Name",
        from_bank_account: "From Bank Account",
        from_account_name: "From Account Name",
        from_account_number: "From Account Number",
        from_bank_code: "From Bank Code",
        from_currency: "From Currency",
        amount: 2.5,
        description: "Description",
        to_bank_account: "To Bank Account",
        to_account_number: "To Account Number",
        to_account_name: "To Account Name",
        to_bank_code: "To Bank Code",
        to_currency_code: "To Currency Code"
      )
    ])
  end

  it "renders a list of payments" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "Product Name".to_s, count: 2
    assert_select "tr>td", text: "From Bank Account".to_s, count: 2
    assert_select "tr>td", text: "From Account Name".to_s, count: 2
    assert_select "tr>td", text: "From Account Number".to_s, count: 2
    assert_select "tr>td", text: "From Bank Code".to_s, count: 2
    assert_select "tr>td", text: "From Currency".to_s, count: 2
    assert_select "tr>td", text: 2.5.to_s, count: 2
    assert_select "tr>td", text: "Description".to_s, count: 2
    assert_select "tr>td", text: "To Bank Account".to_s, count: 2
    assert_select "tr>td", text: "To Account Number".to_s, count: 2
    assert_select "tr>td", text: "To Account Name".to_s, count: 2
    assert_select "tr>td", text: "To Bank Code".to_s, count: 2
    assert_select "tr>td", text: "To Currency Code".to_s, count: 2
  end
end
