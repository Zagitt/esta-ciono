json.array!(@spaces) do |space|
  json.extract! space, :id, :description, :address, :district_id, :price
  json.url space_url(space, format: :json)
end
