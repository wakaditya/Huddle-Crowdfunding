class User < ActiveRecord::Base
  has_many :perks
  has_many :backers
  has_many :events, through: :backers
end
