class CreateDecks < ActiveRecord::Migration[5.1]
  def change
    create_table :decks do |t|
      t.string :name, null: false
      t.integer :placing, null: false
      t.string :player, null: false
      t.belongs_to :tournament, null: false

      t.timestamp
    end
  end
end
