require 'rails_helper'

RSpec.describe "events/show", type: :view do
  before(:each) do
    @event = assign(:event, Event.create!(
      :name => "Name",
      :tag => "Tag",
      :collection => 1.5,
      :rating => 1,
      :location => "Location",
      :ticket => "Ticket"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Tag/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/Ticket/)
  end
end
