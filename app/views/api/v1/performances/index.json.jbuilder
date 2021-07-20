json.performances do
  json.array! @performances do |performance|
    json.extract! performance, :id, :name, :venue, :price, :description, :image_url, :date
  end
end