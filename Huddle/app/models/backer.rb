class Backer < ActiveRecord::Base
    before_save :calc_perk_level
    
    belongs_to :event
    belongs_to :user
    
    
    
    def calc_perk_level
      perk_level = case paid_amount
                            when 1..100 then 1
                            when 101..1000 then 2
                            when 1001..5000 then 3
                            when 5001..10000 then 4
                            else 0
                            end
    end
end
