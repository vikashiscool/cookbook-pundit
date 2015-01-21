json.array!(@recipes) do |recipe|
  json.extract! recipe, :id, :user_id, :title, :instructions
  json.url recipe_url(recipe, format: :json)
end
