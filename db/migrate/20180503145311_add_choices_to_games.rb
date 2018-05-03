class AddChoicesToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :choices, :string
  end
end
