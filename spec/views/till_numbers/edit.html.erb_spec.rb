require 'rails_helper'

RSpec.describe "till_numbers/edit", type: :view do
  before(:each) do
    @till_number = assign(:till_number, TillNumber.create!(
      doctor_name: "MyString",
      contact_number: "MyString",
      till_number: 1
    ))
  end

  it "renders the edit till_number form" do
    render

    assert_select "form[action=?][method=?]", till_number_path(@till_number), "post" do

      assert_select "input[name=?]", "till_number[doctor_name]"

      assert_select "input[name=?]", "till_number[contact_number]"

      assert_select "input[name=?]", "till_number[till_number]"
    end
  end
end
