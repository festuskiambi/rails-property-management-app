json.array!(@bedsitters) do |bedsitter|
  json.extract! bedsitter, :id, :name, :location, :status, :rent, :bedrooms
  json.url bedsitter_url(bedsitter, format: :json)
end
