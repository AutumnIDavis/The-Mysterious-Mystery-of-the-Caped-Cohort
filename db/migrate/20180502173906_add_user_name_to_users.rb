class AddUserNameToUsers < ActiveRecord::Migration[5.2]
  def change
  remove_column :users, :user_name
  end
end
