class CreateUserFollowers < ActiveRecord::Migration
  def change
    create_table :user_followers do |t|
      t.references :user, index: true
      t.integer :follower

      t.timestamps null: false
    end
  end
end
