json.array!(@manage_follow_us) do |manage_follow_u|
  json.extract! manage_follow_u, :id, :facebook_url, :twitter_url, :google_url, :youtube_url, :ping_url, :vimeo_url, :tumbir_url, :rss_url, :flickr_url
  json.url manage_follow_u_url(manage_follow_u, format: :json)
end
