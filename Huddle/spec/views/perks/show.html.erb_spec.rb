require 'rails_helper'

RSpec.describe "perks/show", type: :view do
  before(:each) do
    @perk = assign(:perk, Perk.create!(
      :amount => 1.5,
      :p_type => 1,
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Description/)
  end
end
