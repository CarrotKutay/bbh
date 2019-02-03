class CreateCustomerAccounts < ActiveRecord::Migration[5.2]
  def change
    drop_table :customer_accounts, if_exists: true
    create_table :customer_accounts do |t|
      t.string :firstName
      t.string :lastName
      t.date :birthday
      t.references :orders, foreign_key: true
      t.references :accountable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
