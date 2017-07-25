class CreateServers < ActiveRecord::Migration[5.1]
  def change
    create_table :servers do |t|
      t.string :name
      t.string :address
      t.references :protocol, foreign_key: true
      t.boolean :protocol_default

      t.timestamps
    end
    add_index :servers, :name
    add_index :servers, :address
  end
end
