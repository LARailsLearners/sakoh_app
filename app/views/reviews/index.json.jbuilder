json.array!(@products) do |product|
  json.extract! review, :id, :body, :user
  json.url product_url(review, format: :json)
end