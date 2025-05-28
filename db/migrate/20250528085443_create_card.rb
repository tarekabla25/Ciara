class CreateCard < ActiveRecord::Migration[8.0]
  def change
    create_table :cards do |t|
      t.string :brand, limit: 50
      t.string :model, limit: 30
      t.integer :performance, limit: 3
      t.integer :seats, limit: 2
      t.float :consume
      t.integer :speed, limit: 3
      t.float :acceleration
      t.float :price

      t.timestamps
    end
  end
end
