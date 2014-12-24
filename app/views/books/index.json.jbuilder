json.array!(@books) do |book|
  json.extract! book, :id, :name, :autor_name, :editor, :collection, :kind, :cote
  json.url book_url(book, format: :json)
end
