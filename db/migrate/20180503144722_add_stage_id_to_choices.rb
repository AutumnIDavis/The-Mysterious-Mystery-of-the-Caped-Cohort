class AddStageIdToChoices < ActiveRecord::Migration[5.2]
  def change
    add_column :choices, :stage_id, :integer
  end
end
