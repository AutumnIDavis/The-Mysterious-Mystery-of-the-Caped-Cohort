class AddScrollzIdToStages < ActiveRecord::Migration[5.2]
  def change
    add_column :stages, :scrollz_id, :integer
  end
end
