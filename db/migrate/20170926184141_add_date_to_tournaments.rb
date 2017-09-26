class AddDateToTournaments < ActiveRecord::Migration[5.1]
  def change
    add_column :tournaments, :date, :string, null: false
  end
end
