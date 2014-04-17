json.array!(@maps) do |map|
  json.extract! map, :id, :address, :lng, :lat
  json.url map_url(map, format: :json)
end
