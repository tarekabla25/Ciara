class CreatePlayers < ActiveRecord::Migration[8.0]
  def change
    create_table :players do |t|
      t.string :name,  limit: 32
      t.boolean :human
      t.string :avatar
      #t.integer :number  ???

      t.timestamps
    end
  end
end
