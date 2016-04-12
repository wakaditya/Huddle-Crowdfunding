require 'rails_helper'

RSpec.describe "perks/new", type: :view do
  before(:each) do
    assign(:perk, Perk.new(
      :amount => 1.5,
      :p_type => 1,
      :description => "MyString"
    ))
  end

  it "renders new perk form" do
    render

    assert_select "form[action=?][method=?]", perks_path, "post" do

      assert_select "input#perk_amount[name=?]", "perk[amount]"

      assert_select "input#perk_p_type[name=?]", "perk[p_type]"

      assert_select "input#perk_description[name=?]", "perk[description]"
    end
  end
end
