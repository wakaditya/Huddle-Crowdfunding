class Backer < ActiveRecord::Base
    attr_accessor :perk_level, :paid_amount
    
    belongs_to :event
    belongs_to :user
    
end
