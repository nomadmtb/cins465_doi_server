json.array!(@reviews) do |review|
  json.extract! review, :comment, :user_id, :doi_id
  json.url review_url(review, format: :json)
end
