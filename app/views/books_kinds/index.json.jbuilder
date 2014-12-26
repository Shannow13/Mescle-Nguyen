json.array!(@books_kinds) do |books_kind|
  json.extract! books_kind, :id, :cote_books, :cote_kind
  json.url books_kind_url(books_kind, format: :json)
end
