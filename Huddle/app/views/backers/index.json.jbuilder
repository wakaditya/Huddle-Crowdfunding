json.array!(@backers) do |backer|
  json.extract! backer, :id, :paid_amount, :perk_level
  json.url backer_url(backer, format: :json)
end
