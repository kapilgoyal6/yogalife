json.array!(@wheretobuys) do |wheretobuy|
  json.extract! wheretobuy, :id, :address, :country, :city, :w_days, :w_hours, :phone_no, :fax_no, :email_id
  json.url wheretobuy_url(wheretobuy, format: :json)
end
