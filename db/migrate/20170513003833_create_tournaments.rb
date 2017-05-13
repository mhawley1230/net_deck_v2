class CreateTournaments < ActiveRecord::Migration[5.1]
  def change
    create_table :tournaments do |t|
      t.string :name, null: false
      t.string :location, null: false
      t.string :format, null: false

      t.timestamps
    end
  end
end
