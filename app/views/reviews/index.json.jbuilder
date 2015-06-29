json.array!(@reviews) do |review|
  json.extract! review, :id, :body, :rating, :user
end
