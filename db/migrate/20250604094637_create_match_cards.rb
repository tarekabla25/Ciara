class CreateMatchCards < ActiveRecord::Migration[8.0]
  def change
    create_table :match_cards do |t|
      t.integer :match_id
      t.integer :round_id
      t.integer :match_player_id
      t.integer :card_id

      t.timestamps
    end
  end
end
