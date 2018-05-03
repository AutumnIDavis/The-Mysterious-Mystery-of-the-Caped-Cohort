class AddOptionToChoices < ActiveRecord::Migration[5.2]
  def change
    add_column :choices, :option, :string
  end
end
