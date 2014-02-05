json.array!(@horoscopes) do |horoscope|
  json.extract! horoscope, :id, :title, :subtitle, :start_date, :end_date, :logo, :background, :desc
  json.url horoscope_url(horoscope, format: :json)
end
