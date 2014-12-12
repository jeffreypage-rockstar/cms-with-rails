class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.text :title
      t.text :description
      t.integer :points
      t.references :merchant, index: true

      t.timestamps null: false
    end
  end
end
