class CreateCards < ActiveRecord::Migration[8.0]
  def change
    create_table :cards do |t|
      t.integer :game_id
      t.string :brand
      t.string :model
      t.integer :performance
      t.integer :seats
      t.float :consume
      t.integer :speed
      t.integer :acceleration  #must be an Integer (was float)
      t.float :price

      t.timestamps
    end
  end
end
