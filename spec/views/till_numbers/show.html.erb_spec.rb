require 'rails_helper'

RSpec.describe "till_numbers/show", type: :view do
  before(:each) do
    @till_number = assign(:till_number, TillNumber.create!(
      doctor_name: "Doctor Name",
      contact_number: "Contact Number",
      till_number: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Doctor Name/)
    expect(rendered).to match(/Contact Number/)
    expect(rendered).to match(/2/)
  end
end
