class AddNoOfPlayersToTournmaents < ActiveRecord::Migration[5.1]
  def up
    add_column :tournaments, :no_of_players, :integer, null: false
  end

  def down
    remove_column :tournaments, :no_of_players, :integer
  end
end
