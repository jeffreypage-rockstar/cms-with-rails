class AddOfferImageToOffer < ActiveRecord::Migration
  def change
    add_column :offers, :offer_image, :text
  end
end
