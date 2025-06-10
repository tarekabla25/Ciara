class CreateHandCards < ActiveRecord::Migration[8.0]
  def change
    create_table :hand_cards do |t|
      
      t.timestamps
    end
  end
end
