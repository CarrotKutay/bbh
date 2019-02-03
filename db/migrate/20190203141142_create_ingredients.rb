class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    drop_table(:ingredients, if_exists: true)
    create_table :ingredients do |t|
      t.references :provider_accounts, foreign_key: true
      t.integer :type
      t.integer :allergicSubstances
      t.references :productable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
