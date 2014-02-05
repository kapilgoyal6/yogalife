json.array!(@manage_news) do |manage_news|
  json.extract! manage_news, :id, :title, :created_by, :news_image, :desc
  json.url manage_news_url(manage_news, format: :json)
end
