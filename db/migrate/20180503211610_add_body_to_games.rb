class AddBodyToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :body, :string
  end
end
