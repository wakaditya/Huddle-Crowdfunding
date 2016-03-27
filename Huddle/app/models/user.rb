class User
  include Mongoid::Document
  include ActiveModel::SecurePassword

  has_secure_password

  field :add, type: Address
  field :name, type: String
  field :email, type: String
  field :contact, type: String
  field :pwd, type: String

  embeds_many :events

	def User.digest(string)
		cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
		BCrypt::Password.create(string, cost: cost)
	end

end