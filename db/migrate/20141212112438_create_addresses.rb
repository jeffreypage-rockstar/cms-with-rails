class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.text :street_address
      t.text :city
      t.text :state
      t.text :postal_code
      t.text :country
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
