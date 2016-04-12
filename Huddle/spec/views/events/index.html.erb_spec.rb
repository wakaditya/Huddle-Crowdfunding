require 'rails_helper'

RSpec.describe "events/index", type: :view do
  before(:each) do
    assign(:events, [
      Event.create!(
        :name => "Name",
        :tag => "Tag",
        :collection => 1.5,
        :rating => 1,
        :location => "Location",
        :ticket => "Ticket"
      ),
      Event.create!(
        :name => "Name",
        :tag => "Tag",
        :collection => 1.5,
        :rating => 1,
        :location => "Location",
        :ticket => "Ticket"
      )
    ])
  end

  it "renders a list of events" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Tag".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "Ticket".to_s, :count => 2
  end
end
