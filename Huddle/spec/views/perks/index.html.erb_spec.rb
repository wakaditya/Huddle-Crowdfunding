require 'rails_helper'

RSpec.describe "perks/index", type: :view do
  before(:each) do
    assign(:perks, [
      Perk.create!(
        :amount => 1.5,
        :p_type => 1,
        :description => "Description"
      ),
      Perk.create!(
        :amount => 1.5,
        :p_type => 1,
        :description => "Description"
      )
    ])
  end

  it "renders a list of perks" do
    render
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
