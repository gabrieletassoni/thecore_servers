class CreateServers < ActiveRecord::Migration[5.1]
  def change
    create_table :servers do |t|
      t.string :name
      t.string :address
      t.string :username, :string
      t.string :password, :string
      t.string :path, :string
      t.references :protocol, foreign_key: true
      t.boolean :protocol_default

      t.timestamps
    end
    add_index :servers, :name
    add_index :servers, :address
    add_index :servers, :username
    add_index :servers, :password
    add_index :servers, :path
  end
end
