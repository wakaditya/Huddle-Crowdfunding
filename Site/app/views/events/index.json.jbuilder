json.array!(@events) do |event|
  json.extract! event, :id, :name, :type, :collection, :funding_deadline
  json.url event_url(event, format: :json)
end
