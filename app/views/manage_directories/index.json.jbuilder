json.array!(@manage_directories) do |manage_directory|
  json.extract! manage_directory, :id, :sub_category, :country, :city, :business_name, :location, :phone_no, :email, :website, :desc
  json.url manage_directory_url(manage_directory, format: :json)
end
