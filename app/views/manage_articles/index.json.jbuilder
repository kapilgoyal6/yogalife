json.array!(@manage_articles) do |manage_article|
  json.extract! manage_article, :id, :title, :cat, :sub_cat, :image, :created_by, :rel_article, :desc
  json.url manage_article_url(manage_article, format: :json)
end
