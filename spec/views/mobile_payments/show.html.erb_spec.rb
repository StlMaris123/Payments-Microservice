require 'rails_helper'

RSpec.describe "mobile_payments/show", type: :view do
  before(:each) do
    @mobile_payment = assign(:mobile_payment, MobilePayment.create!(
      amount: 2.5,
      till_number: 3,
      reason_for_payment: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/MyText/)
  end
end
