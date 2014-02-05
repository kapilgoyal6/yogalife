json.array!(@subcategories) do |subcategory|
  json.extract! subcategory, :id, :cat_name, :sub_cat_name, :desc
  json.url subcategory_url(subcategory, format: :json)
end
