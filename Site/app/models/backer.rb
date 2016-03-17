class Backer < User
  include Mongoid::Document
  field :paid_amount, type: Integer
  field :p_l, as: :perk_level, type: Perk #TO DO

  embedded_in :event
=begin
	TO DO
  def calculate_perk
  	
  end
=end


end
