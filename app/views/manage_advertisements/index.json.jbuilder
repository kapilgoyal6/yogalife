json.array!(@manage_advertisements) do |manage_advertisement|
  json.extract! manage_advertisement, :id, :right_add_image, :right_url, :mid_add_image, :mid_url
  json.url manage_advertisement_url(manage_advertisement, format: :json)
end
