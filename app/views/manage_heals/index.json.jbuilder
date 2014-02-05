json.array!(@manage_heals) do |manage_heal|
  json.extract! manage_heal, :id, :title, :sub_category, :image, :created_by, :desc
  json.url manage_heal_url(manage_heal, format: :json)
end
