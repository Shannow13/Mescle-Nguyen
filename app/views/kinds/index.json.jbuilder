json.array!(@kinds) do |kind|
  json.extract! kind, :id, :name, :cote
  json.url kind_url(kind, format: :json)
end
