require 'rails_helper'

RSpec.describe "payments/show", type: :view do
  before(:each) do
    @payment = assign(:payment, Payment.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Product Name/)
    expect(rendered).to match(/From Bank Account/)
    expect(rendered).to match(/From Account Name/)
    expect(rendered).to match(/From Account Number/)
    expect(rendered).to match(/From Bank Code/)
    expect(rendered).to match(/From Currency/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/To Bank Account/)
    expect(rendered).to match(/To Account Number/)
    expect(rendered).to match(/To Account Name/)
    expect(rendered).to match(/To Bank Code/)
    expect(rendered).to match(/To Currency Code/)
  end
end
