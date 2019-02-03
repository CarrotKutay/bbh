class CreateProviderAccounts < ActiveRecord::Migration[5.2]
  def change
    drop_table(:provider_accounts,if_exists: true)
    create_table :provider_accounts do |t|
      t.string :providerID, unique: true
      t.references :providerIngredients, foreign_key: true
      t.references :accountable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
