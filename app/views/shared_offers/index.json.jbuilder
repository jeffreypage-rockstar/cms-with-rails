json.array!(@shared_offers) do |shared_offer|
  json.extract! shared_offer, :id, :offer_id, :user_id, :is_accepted, :datetime_accepted, :is_redeemed, :datetime_redeemed
  json.url shared_offer_url(shared_offer, format: :json)
end
