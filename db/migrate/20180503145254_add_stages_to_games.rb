class AddStagesToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :stages, :string
  end
end
