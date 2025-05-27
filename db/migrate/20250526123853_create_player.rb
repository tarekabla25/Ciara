class CreatePlayer < ActiveRecord::Migration[8.0]
  def change
    create_table :players do |t|
      t.string :name,  limit: 32
      t.integer :number, limit: 1
      t.boolean :human

      t.timestamps
    end
  end
end
