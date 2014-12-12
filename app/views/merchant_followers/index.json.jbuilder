json.array!(@merchant_followers) do |merchant_follower|
  json.extract! merchant_follower, :id, :merchant_id, :user_id
  json.url merchant_follower_url(merchant_follower, format: :json)
end
