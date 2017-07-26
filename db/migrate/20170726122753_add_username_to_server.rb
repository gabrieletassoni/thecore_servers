class AddUsernameToServer < ActiveRecord::Migration[5.1]
  def change
    add_column :servers, :username, :string
    add_index :servers, :username
  end
end
