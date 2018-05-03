class AddPareentChoiceIdToStages < ActiveRecord::Migration[5.2]
  def change
    add_column :stages, :parent_choice_id, :integer
  end
end
