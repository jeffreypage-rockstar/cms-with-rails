class AddAddressToMerchant < ActiveRecord::Migration
  def change
    add_reference :merchants, :address, index: true
  end
end
