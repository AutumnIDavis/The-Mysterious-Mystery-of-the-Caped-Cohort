class CreateScrollzs < ActiveRecord::Migration[5.2]
  def change
    create_table :scrollzs do |t|

      t.timestamps
    end
  end
end
