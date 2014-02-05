json.array!(@cms) do |cm|
  json.extract! cm, :id, :page_title, :meta_keywords, :meta_desc, :page_content
  json.url cm_url(cm, format: :json)
end
