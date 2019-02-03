class CreateAdminAccounts < ActiveRecord::Migration[5.2]
  def change
    drop_table(:admin_accounts, if_exists: true)
    create_table :admin_accounts do |t|
      t.integer :accountLevel
      t.references :accountable, polymorphic: true, index:true

      t.timestamps
    end
  end
end
