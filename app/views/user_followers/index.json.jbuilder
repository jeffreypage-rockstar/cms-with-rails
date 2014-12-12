json.array!(@user_followers) do |user_follower|
  json.extract! user_follower, :id, :user_id, :follower
  json.url user_follower_url(user_follower, format: :json)
end
