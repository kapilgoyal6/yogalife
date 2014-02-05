json.array!(@manage_teams) do |manage_team|
  json.extract! manage_team, :id, :name, :image, :position, :desc
  json.url manage_team_url(manage_team, format: :json)
end
