class AddScrollzToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :scrollz, :string
  end
end
