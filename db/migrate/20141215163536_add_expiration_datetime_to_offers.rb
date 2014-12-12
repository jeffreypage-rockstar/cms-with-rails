class AddExpirationDatetimeToOffers < ActiveRecord::Migration
  def change
    add_column :offers, :expiration_datetime, :datetime
  end
end
