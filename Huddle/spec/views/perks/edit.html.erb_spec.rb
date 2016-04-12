require 'rails_helper'

RSpec.describe "perks/edit", type: :view do
  before(:each) do
    @perk = assign(:perk, Perk.create!(
      :amount => 1.5,
      :p_type => 1,
      :description => "MyString"
    ))
  end

  it "renders the edit perk form" do
    render

    assert_select "form[action=?][method=?]", perk_path(@perk), "post" do

      assert_select "input#perk_amount[name=?]", "perk[amount]"

      assert_select "input#perk_p_type[name=?]", "perk[p_type]"

      assert_select "input#perk_description[name=?]", "perk[description]"
    end
  end
end
