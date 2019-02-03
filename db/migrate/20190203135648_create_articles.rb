class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    drop_table(:articles, if_exists: true)
    create_table :articles do |t|
      t.references :discountClass, foreign_key: true
      t.references :ingredients, foreign_key: true
      t.references :productable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
