class CreateDiscountClasses < ActiveRecord::Migration[5.2]
  def change
    drop_table(:discount_classes, if_exists: true)
    create_table :discount_classes do |t|
      t.references :class, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
