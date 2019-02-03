class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    drop_table :products, if_exists: true
    create_table :products do |t|
      t.string :name
      t.integer :measurement
      t.decimal :price
      t.references :productable, polymorphic: true, index:true

      t.timestamps
    end
  end
end
