json.array!(@perks) do |perk|
  json.extract! perk, :id, :amount, :p_type, :description
  json.url perk_url(perk, format: :json)
end
