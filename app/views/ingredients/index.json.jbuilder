json.array!(@ingredients) do |ingredient|
  json.extract! ingredient, :id, :name, :count
  json.url ingredient_url(ingredient, format: :json)
end
