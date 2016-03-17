json.array!(@events) do |event|
  json.extract! event, :id, :name, :tag, :c, :dline, :e_date, :r, :location, :ticket
  json.url event_url(event, format: :json)
end
