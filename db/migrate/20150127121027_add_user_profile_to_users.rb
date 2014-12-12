class AddUserProfileToUsers < ActiveRecord::Migration
  def change
    add_column :users, :user_profile, :text
  end
end
