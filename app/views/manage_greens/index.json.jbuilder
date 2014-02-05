json.array!(@manage_greens) do |manage_green|
  json.extract! manage_green, :id, :title, :sub_category, :image, :created_by, :desc
  json.url manage_green_url(manage_green, format: :json)
end
