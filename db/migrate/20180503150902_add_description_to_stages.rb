class AddDescriptionToStages < ActiveRecord::Migration[5.2]
  def change
    add_column :stages, :description, :text
  end
end
