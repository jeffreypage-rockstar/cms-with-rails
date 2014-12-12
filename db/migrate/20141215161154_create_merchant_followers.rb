class CreateMerchantFollowers < ActiveRecord::Migration
  def change
    create_table :merchant_followers do |t|
      t.references :merchant, index: true
      t.references :user, index: true

      t.timestamps null: false
    end
  end
end
