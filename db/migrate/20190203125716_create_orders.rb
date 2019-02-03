class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    drop_table :orders, if_exists: true
    create_table :orders do |t|
      t.integer :orderConfirmationNumber
      t.date :ordered
      t.date :shipped
      t.string :orderedItems
      t.references :shippingAddress, foreign_key: true
      t.integer :status
      t.decimal :price

      t.timestamps
    end
  end
end
