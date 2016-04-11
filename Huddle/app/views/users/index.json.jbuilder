json.array!(@users) do |user|
  json.extract! user, :id, :address, :name, :email, :password, :contact, :perks_id
  json.url user_url(user, format: :json)
end
