class CreateStartCards < ActiveRecord::Migration[8.0]
  def change
    create_table :start_cards do |t|
      
      t.timestamps
    end
  end
end
