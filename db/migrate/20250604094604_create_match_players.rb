class CreateMatchPlayers < ActiveRecord::Migration[8.0]
  def change
    create_table :match_players do |t|
      t.integer :player_id
      t.integer :match_id
      t.integer :number

      t.timestamps
    end
  end
end
