json.array!(@manage_glows) do |manage_glow|
  json.extract! manage_glow, :id, :title, :sub_category, :image, :created_by, :desc
  json.url manage_glow_url(manage_glow, format: :json)
end
