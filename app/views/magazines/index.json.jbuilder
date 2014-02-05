json.array!(@magazines) do |magazine|
  json.extract! magazine, :id, :title, :issue_date, :cover_image, :desc, :pages
  json.url magazine_url(magazine, format: :json)
end
