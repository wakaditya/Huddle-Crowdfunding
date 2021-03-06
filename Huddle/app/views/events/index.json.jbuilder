json.array!(@events) do |event|
  json.extract! event, :id, :name, :tag, :collection, :funding_deadline, :event_date, :rating, :location, :ticket
  json.url event_url(event, format: :json)
end
