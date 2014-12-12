class CreateSharedOffers < ActiveRecord::Migration
  def change
    create_table :shared_offers do |t|
      t.references :offer, index: true
      t.belongs_to :user_sent
      t.belongs_to :user_received
      t.boolean :is_accepted
      t.datetime :datetime_accepted
      t.boolean :is_redeemed
      t.datetime :datetime_redeemed

      t.timestamps null: false
    end
  end
end
