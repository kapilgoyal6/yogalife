json.array!(@manage_events) do |manage_event|
  json.extract! manage_event, :id, :title, :category, :author, :event_date, :event_image, :desc
  json.url manage_event_url(manage_event, format: :json)
end
