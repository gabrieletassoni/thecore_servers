class AddPortToProtocol < ActiveRecord::Migration[5.1]
  def change
    add_column :protocols, :port, :integer
    add_index :protocols, :port
  end
end
