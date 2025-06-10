class CreateRounds < ActiveRecord::Migration[8.0]
  def change
    create_table :rounds do |t|
      t.integer :number
      t.integer :match_id     #match_id instead of game_id???
      t.integer :winner_id
      t.integer :current_player_id
      t.string :selected_attribute   #attribute is a reserved word in Rails (Ruby)

      t.timestamps
    end
  end
end
