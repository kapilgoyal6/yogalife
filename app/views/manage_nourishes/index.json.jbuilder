json.array!(@manage_nourishes) do |manage_nourish|
  json.extract! manage_nourish, :id, :title, :sub_category, :image, :created_by, :website, :desc
  json.url manage_nourish_url(manage_nourish, format: :json)
end
