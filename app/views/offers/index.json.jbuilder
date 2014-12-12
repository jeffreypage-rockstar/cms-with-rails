json.array!(@offers) do |offer|
  json.extract! offer, :id, :title, :description, :points, :merchant_id
  json.url offer_url(offer, format: :json)
end
