class AddToDestroyToStages < ActiveRecord::Migration[5.2]
  def change
    add_column :stages, :to_destroy, :boolean
  end
end
