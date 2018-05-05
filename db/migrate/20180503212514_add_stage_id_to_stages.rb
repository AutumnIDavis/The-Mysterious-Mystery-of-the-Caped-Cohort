class AddStageIdToStages < ActiveRecord::Migration[5.2]
  def change
    add_column :stages, :stage_id, :integer
  end
end
