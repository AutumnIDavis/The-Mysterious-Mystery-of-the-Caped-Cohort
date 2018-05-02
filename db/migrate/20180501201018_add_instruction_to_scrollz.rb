class AddInstructionToScrollz < ActiveRecord::Migration[5.2]
  def change
    add_column :scrollzs, :intstruction, :text
  end
end
