class AddUserIdToScrollz < ActiveRecord::Migration[5.2]
  def change
    add_column :scrollzs, :user_id, :integer
  end
end
