class AddMerchantImagesToMerchants < ActiveRecord::Migration
  def change
    add_column :merchants, :merchant_images, :json
  end
end
