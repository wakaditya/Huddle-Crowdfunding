require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :address => "Address",
        :name => "Name",
        :email => "Email",
        :contact => "Contact",
        :password => "Password"
      ),
      User.create!(
        :address => "Address",
        :name => "Name",
        :email => "Email",
        :contact => "Contact",
        :password => "Password"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Contact".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
  end
end
