class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    drop_table(:accounts,if_exists: true)
    create_table :accounts do |t|
      t.string :username, uniqueness: true
      t.string :password
      t.string :email, uniqueness: true
      t.references :address, foreign_key: true
      t.string :iban
      t.references :accountable, polymorphic: true

      t.timestamps
    end
  end
end
