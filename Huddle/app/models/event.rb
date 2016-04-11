class Event < ActiveRecord::Base
  has_many :backers
  has_many :users, through: :backers
end
