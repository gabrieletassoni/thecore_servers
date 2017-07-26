class AddPasswordToServer < ActiveRecord::Migration[5.1]
  def change
    add_column :servers, :password, :string
    add_index :servers, :password
  end
end
