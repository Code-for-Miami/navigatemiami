require 'rails_helper'

RSpec.describe "organizations/edit", type: :view do
  before(:each) do
    @organization = assign(:organization, Organization.create!(
      :name => "MyString",
      :category => "MyString",
      :website => "MyString",
      :address_1 => "MyString",
      :address_2 => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => 1
    ))
  end

  it "renders the edit organization form" do
    render

    assert_select "form[action=?][method=?]", organization_path(@organization), "post" do

      assert_select "input[name=?]", "organization[name]"

      assert_select "input[name=?]", "organization[category]"

      assert_select "input[name=?]", "organization[website]"

      assert_select "input[name=?]", "organization[address_1]"

      assert_select "input[name=?]", "organization[address_2]"

      assert_select "input[name=?]", "organization[city]"

      assert_select "input[name=?]", "organization[state]"

      assert_select "input[name=?]", "organization[zip]"
    end
  end
end
