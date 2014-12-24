json.array!(@autors) do |autor|
  json.extract! autor, :id, :name, :first_name, :nationality
  json.url autor_url(autor, format: :json)
end
