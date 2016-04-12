require 'rails_helper'

RSpec.describe "events/new", type: :view do
  before(:each) do
    assign(:event, Event.new(
      :name => "MyString",
      :tag => "MyString",
      :collection => 1.5,
      :rating => 1,
      :location => "MyString",
      :ticket => "MyString"
    ))
  end

  it "renders new event form" do
    render

    assert_select "form[action=?][method=?]", events_path, "post" do

      assert_select "input#event_name[name=?]", "event[name]"

      assert_select "input#event_tag[name=?]", "event[tag]"

      assert_select "input#event_collection[name=?]", "event[collection]"

      assert_select "input#event_rating[name=?]", "event[rating]"

      assert_select "input#event_location[name=?]", "event[location]"

      assert_select "input#event_ticket[name=?]", "event[ticket]"
    end
  end
end
