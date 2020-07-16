require 'rails_helper'

RSpec.describe "till_numbers/new", type: :view do
  before(:each) do
    assign(:till_number, TillNumber.new(
      doctor_name: "MyString",
      contact_number: "MyString",
      till_number: 1
    ))
  end

  it "renders new till_number form" do
    render

    assert_select "form[action=?][method=?]", till_numbers_path, "post" do

      assert_select "input[name=?]", "till_number[doctor_name]"

      assert_select "input[name=?]", "till_number[contact_number]"

      assert_select "input[name=?]", "till_number[till_number]"
    end
  end
end
