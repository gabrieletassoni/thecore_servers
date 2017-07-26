class AddPathToServer < ActiveRecord::Migration[5.1]
  def change
    add_column :servers, :path, :string
    add_index :servers, :path
  end
end
