class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    drop_table :addresses, if_exists: true
    create_table :addresses do |t|
      t.string :name
      t.string :country
      t.string :city
      t.string :postalCode
      t.string :street
      t.string :streetNr
      t.references :account, foreign_key: true
      t.references :addressable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
