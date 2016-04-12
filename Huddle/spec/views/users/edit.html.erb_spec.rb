require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :address => "MyString",
      :name => "MyString",
      :email => "MyString",
      :contact => "MyString",
      :password => "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input#user_address[name=?]", "user[address]"

      assert_select "input#user_name[name=?]", "user[name]"

      assert_select "input#user_email[name=?]", "user[email]"

      assert_select "input#user_contact[name=?]", "user[contact]"

      assert_select "input#user_password[name=?]", "user[password]"
    end
  end
end
