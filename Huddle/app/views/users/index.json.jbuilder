json.array!(@users) do |user|
  json.extract! user, :id, :address, :name, :email, :contact, :password
  json.url user_url(user, format: :json)
end
