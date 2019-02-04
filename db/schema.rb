# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_02_03_195537) do

  create_table "accounts", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "email"
    t.integer "address_id"
    t.string "iban"
    t.string "accountable_type"
    t.integer "accountable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["accountable_type", "accountable_id"], name: "index_accounts_on_accountable_type_and_accountable_id"
    t.index ["address_id"], name: "index_accounts_on_address_id"
  end

  create_table "addresses", force: :cascade do |t|
    t.string "name"
    t.string "country"
    t.string "city"
    t.string "postalCode"
    t.string "street"
    t.string "streetNr"
    t.integer "account_id"
    t.string "addressable_type"
    t.integer "addressable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_addresses_on_account_id"
    t.index ["addressable_type", "addressable_id"], name: "index_addresses_on_addressable_type_and_addressable_id"
  end

  create_table "admin_accounts", force: :cascade do |t|
    t.integer "accountLevel"
    t.string "accountable_type"
    t.integer "accountable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["accountable_type", "accountable_id"], name: "index_admin_accounts_on_accountable_type_and_accountable_id"
  end

  create_table "articles", force: :cascade do |t|
    t.integer "discountClass"
    t.integer "ingredients_id"
    t.string "productable_type"
    t.integer "productable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ingredients_id"], name: "index_articles_on_ingredients_id"
    t.index ["productable_type", "productable_id"], name: "index_articles_on_productable_type_and_productable_id"
  end

  create_table "customer_accounts", force: :cascade do |t|
    t.string "firstName"
    t.string "lastName"
    t.date "birthday"
    t.integer "orders_id"
    t.string "accountable_type"
    t.integer "accountable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["accountable_type", "accountable_id"], name: "index_customer_accounts_on_accountable_type_and_accountable_id"
    t.index ["orders_id"], name: "index_customer_accounts_on_orders_id"
  end

  create_table "discount_classes", force: :cascade do |t|
    t.integer "class_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["class_id"], name: "index_discount_classes_on_class_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.integer "providerID_id"
    t.integer "type"
    t.integer "allergicSubstances"
    t.string "productable_type"
    t.integer "productable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["productable_type", "productable_id"], name: "index_ingredients_on_productable_type_and_productable_id"
    t.index ["providerID_id"], name: "index_ingredients_on_providerID_id"
  end

  create_table "menus", force: :cascade do |t|
    t.integer "discountClass"
    t.integer "articles_id"
    t.string "productable_type"
    t.integer "productable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["articles_id"], name: "index_menus_on_articles_id"
    t.index ["productable_type", "productable_id"], name: "index_menus_on_productable_type_and_productable_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "orderConfirmationNumber"
    t.date "ordered"
    t.date "shipped"
    t.string "orderedItems"
    t.integer "shippingAddress_id"
    t.integer "status"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shippingAddress_id"], name: "index_orders_on_shippingAddress_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.integer "measurement"
    t.decimal "price"
    t.string "productable_type"
    t.integer "productable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["productable_type", "productable_id"], name: "index_products_on_productable_type_and_productable_id"
  end

  create_table "provider_accounts", force: :cascade do |t|
    t.string "providerID"
    t.integer "providerIngredients_id"
    t.string "accountable_type"
    t.integer "accountable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["accountable_type", "accountable_id"], name: "index_provider_accounts_on_accountable_type_and_accountable_id"
    t.index ["providerIngredients_id"], name: "index_provider_accounts_on_providerIngredients_id"
  end

  create_table "warehouses", force: :cascade do |t|
    t.string "name"
    t.integer "stockedIngredients_id"
    t.integer "count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["stockedIngredients_id"], name: "index_warehouses_on_stockedIngredients_id"
  end

end
