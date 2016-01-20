json.array!(@events) do |event|
  json.extract! event, :id, :name, :category, :funding_deadline, :funding_goal, :collections, :user_id
  json.url event_url(event, format: :json)
end
