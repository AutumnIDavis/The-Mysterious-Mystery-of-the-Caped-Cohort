class CreateWindows < ActiveRecord::Migration[5.2]
  def change
    create_table :windows do |t|

      t.timestamps
    end
  end
end
