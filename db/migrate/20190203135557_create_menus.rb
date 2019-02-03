class CreateMenus < ActiveRecord::Migration[5.2]
  def change
    drop_table(:menus, if_exists: true)
    create_table :menus do |t|
      t.references :discountClass, foreign_key: true
      t.references :articles, foreign_key: true
      t.references :productable, polymorphic: true, index:true

      t.timestamps
    end
  end
end
