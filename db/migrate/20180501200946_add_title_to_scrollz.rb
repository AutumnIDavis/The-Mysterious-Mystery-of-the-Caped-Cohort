class AddTitleToScrollz < ActiveRecord::Migration[5.2]
  def change
    add_column :scrollzs, :title, :string
  end
end
