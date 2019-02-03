class CreateWarehouses < ActiveRecord::Migration[5.2]
  def change
    drop_table(:warehouses, if_exists: true)
    create_table :warehouses do |t|
      t.string :name
      t.references :ingredients, foreign_key: true
      t.integer :count

      t.timestamps
    end
  end
end
