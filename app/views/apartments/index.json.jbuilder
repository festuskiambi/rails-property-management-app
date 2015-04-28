json.array!(@apartments) do |apartment|
  json.extract! apartment, :id, :name, :location, :status, :rent, :bedrooms
  json.url apartment_url(apartment, format: :json)
end
