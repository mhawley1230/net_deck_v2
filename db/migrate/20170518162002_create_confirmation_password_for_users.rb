class CreateConfirmationPasswordForUsers < ActiveRecord::Migration[5.1]
  def up
    add_column :users, :confirmation_password, :string, null: false
  end

  def down
    remove_column :users, :confirmation_password
  end
end
