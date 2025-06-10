class CreatePlayedCards < ActiveRecord::Migration[8.0]
  def change
    create_table :played_cards do |t|
      t.integer :round_id
      t.integer :match_player_id
      t.integer :card_id

      t.timestamps
    end
  end
end
