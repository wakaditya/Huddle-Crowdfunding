json.array!(@users) do |user|
  json.extract! user, :id, :add, :name, :email, :contact, :pwd
  json.url user_url(user, format: :json)
end
