class HomeController < ApplicationController
  
  def welcome
    @events = Event.all
  end
  
end
