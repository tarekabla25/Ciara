class CreateRounds < ActiveRecord::Migration[8.0]
  def change
    create_table :rounds do |t|
      t.integer :number
      t.integer :winner_id
      t.integer :current_player_id
      t.integer :game_id
      t.string :attribute

      t.timestamps
    end
  end
end
