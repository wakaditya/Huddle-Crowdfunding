json.array!(@perks) do |perk|
  json.extract! perk, :id, :amount, :type
  json.url perk_url(perk, format: :json)
end
