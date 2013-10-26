json.array!(@urls) do |url|
  json.extract! url, :url, :doi_id, :date
  json.url url_url(url, format: :json)
end
