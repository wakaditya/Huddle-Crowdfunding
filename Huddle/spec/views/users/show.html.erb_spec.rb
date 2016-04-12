require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :address => "Address",
      :name => "Name",
      :email => "Email",
      :contact => "Contact",
      :password => "Password"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Contact/)
    expect(rendered).to match(/Password/)
  end
end
