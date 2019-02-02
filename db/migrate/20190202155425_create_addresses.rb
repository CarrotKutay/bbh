class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :name
      t.string :country
      t.string :city
      t.string :postalCode
      t.string :street
      t.string :streetNr

      t.timestamps
    end
  end
end
