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

ActiveRecord::Schema.define(version: 20170819170301) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "flavors", force: :cascade do |t|
    t.string "name"
    t.boolean "dairy"
  end

  create_table "ice_cream_flavors", force: :cascade do |t|
    t.bigint "order_id"
    t.bigint "flavor_id"
    t.index ["flavor_id"], name: "index_ice_cream_flavors_on_flavor_id"
    t.index ["order_id"], name: "index_ice_cream_flavors_on_order_id"
  end

  create_table "mix_ins", force: :cascade do |t|
    t.bigint "order_id"
    t.bigint "mix_id"
    t.index ["mix_id"], name: "index_mix_ins_on_mix_id"
    t.index ["order_id"], name: "index_mix_ins_on_order_id"
  end

  create_table "mixes", force: :cascade do |t|
    t.string "name"
    t.boolean "choclate"
    t.boolean "nuts"
    t.boolean "fruits"
    t.boolean "other"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "scoops"
    t.bigint "special_id"
    t.integer "eating_method"
    t.index ["special_id"], name: "index_orders_on_special_id"
  end

  create_table "specials", force: :cascade do |t|
    t.string "name"
    t.string "description"
  end

  create_table "toppings", force: :cascade do |t|
    t.bigint "order_id"
    t.bigint "toppin_id"
    t.index ["order_id"], name: "index_toppings_on_order_id"
    t.index ["toppin_id"], name: "index_toppings_on_toppin_id"
  end

  create_table "toppins", force: :cascade do |t|
    t.string "name"
  end

end
