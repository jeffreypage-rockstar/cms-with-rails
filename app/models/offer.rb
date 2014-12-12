class Offer < ActiveRecord::Base
  belongs_to :merchant
  mount_uploader :offer_image_uploader, OfferImageUploader
end
