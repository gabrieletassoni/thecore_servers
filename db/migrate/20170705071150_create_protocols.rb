class CreateProtocols < ActiveRecord::Migration[5.1]
  def change
    create_table :protocols do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
    add_index :protocols, :name
    add_index :protocols, :description
  end
end
