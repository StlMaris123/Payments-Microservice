require 'rails_helper'

RSpec.describe "till_numbers/index", type: :view do
  before(:each) do
    assign(:till_numbers, [
      TillNumber.create!(
        doctor_name: "Doctor Name",
        contact_number: "Contact Number",
        till_number: 2
      ),
      TillNumber.create!(
        doctor_name: "Doctor Name",
        contact_number: "Contact Number",
        till_number: 2
      )
    ])
  end

  it "renders a list of till_numbers" do
    render
    assert_select "tr>td", text: "Doctor Name".to_s, count: 2
    assert_select "tr>td", text: "Contact Number".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
