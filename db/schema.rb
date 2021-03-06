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

ActiveRecord::Schema.define(version: 20170111233401) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "api_keys", force: :cascade do |t|
    t.string   "guid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "menu_item_categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "menu_item_tags", force: :cascade do |t|
    t.integer  "menu_item_id"
    t.string   "tag"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "menu_items", force: :cascade do |t|
    t.integer  "restaurant_id"
    t.string   "name"
    t.text     "description"
    t.integer  "category_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "restaurant_addresses", force: :cascade do |t|
    t.integer  "restaurant_id"
    t.string   "street_1"
    t.string   "street_2"
    t.string   "country"
    t.string   "city"
    t.string   "zip_code"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "restaurant_ratings", force: :cascade do |t|
    t.integer  "restaurant_id"
    t.decimal  "rating"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "restaurants", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "address_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "menu_items_id"
    t.integer  "restaurant_ratings_id"
    t.integer  "restaurant_address_id"
    t.index ["menu_items_id"], name: "index_restaurants_on_menu_items_id", using: :btree
    t.index ["restaurant_address_id"], name: "index_restaurants_on_restaurant_address_id", using: :btree
    t.index ["restaurant_ratings_id"], name: "index_restaurants_on_restaurant_ratings_id", using: :btree
  end

  add_foreign_key "restaurants", "menu_items", column: "menu_items_id"
  add_foreign_key "restaurants", "restaurant_addresses"
  add_foreign_key "restaurants", "restaurant_ratings", column: "restaurant_ratings_id"
end
