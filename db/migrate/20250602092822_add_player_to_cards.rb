class AddUserToCards < ActiveRecord::Migration[8.0]
  def change
    add_reference :cards, :player, null: false, foreign_key: true
  end
end
