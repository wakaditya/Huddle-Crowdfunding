class HomeController < ApplicationController
  
  def welcome
    @events = Event.all + Event.using(:mumbai_shard).all
  end
  
end
