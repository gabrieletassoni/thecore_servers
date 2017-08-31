class CreateProtocols < ActiveRecord::Migration[5.1]
  def change
    create_table :protocols do |t|
      t.string :name
      t.text :description
      t.integer :port

      t.timestamps
    end
    add_index :protocols, :name
    add_index :protocols, :description
    add_index :protocols, :port
  end
end
