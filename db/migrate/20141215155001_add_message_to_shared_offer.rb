class AddMessageToSharedOffer < ActiveRecord::Migration
  def change
    add_column :shared_offers, :message, :text
  end
end
