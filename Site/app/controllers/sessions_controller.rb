class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by_email(params[:email])
  	if user && user.authenticate(params[:password])
  		sessions[:user_id] = user.id
  		redirect_to root_url, notice: "Logged In!"
  	else
  		flash.now.alert = "Email or password is invalid"
  		rendr "new"
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to root_url, notice: "Logged Out"
  end
end
