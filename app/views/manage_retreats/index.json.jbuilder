json.array!(@manage_retreats) do |manage_retreat|
  json.extract! manage_retreat, :id, :title, :sub_category, :image, :created_by, :desc
  json.url manage_retreat_url(manage_retreat, format: :json)
end
