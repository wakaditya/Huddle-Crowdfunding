require 'rails_helper'

RSpec.describe "events/edit", type: :view do
  before(:each) do
    @event = assign(:event, Event.create!(
      :name => "MyString",
      :tag => "MyString",
      :collection => 1.5,
      :rating => 1,
      :location => "MyString",
      :ticket => "MyString"
    ))
  end

  it "renders the edit event form" do
    render

    assert_select "form[action=?][method=?]", event_path(@event), "post" do

      assert_select "input#event_name[name=?]", "event[name]"

      assert_select "input#event_tag[name=?]", "event[tag]"

      assert_select "input#event_collection[name=?]", "event[collection]"

      assert_select "input#event_rating[name=?]", "event[rating]"

      assert_select "input#event_location[name=?]", "event[location]"

      assert_select "input#event_ticket[name=?]", "event[ticket]"
    end
  end
end
