json.array!(@houses) do |house|
  json.extract! house, :id, :name, :location, :status, :rent, :bedrooms
  json.url house_url(house, format: :json)
end
