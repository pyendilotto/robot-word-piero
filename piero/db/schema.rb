# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_10_150648) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cars", id: :serial, force: :cascade do |t|
    t.string "model", limit: 1
    t.string "year", limit: 4
    t.date "fabrication_date"
    t.float "cost_price"
    t.float "sell_price"
    t.string "state", limit: 15
    t.string "location", limit: 10
    t.string "defect", limit: 15
  end

  create_table "changes", id: :serial, force: :cascade do |t|
    t.integer "id_order"
  end

  create_table "deffects", force: :cascade do |t|
    t.integer "id_car"
  end

  create_table "missings", id: :serial, force: :cascade do |t|
    t.string "model", limit: 1
  end

  create_table "orders", id: :serial, force: :cascade do |t|
    t.integer "id_car"
    t.float "total"
    t.datetime "date"
    t.float "quantity"
  end

end
