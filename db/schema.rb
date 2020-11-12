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

ActiveRecord::Schema.define(version: 2020_11_12_051422) do

  create_table "asteroid_types", force: :cascade do |t|
    t.string "type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "asteroids", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.decimal "cost"
    t.integer "asteroid_type_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["asteroid_type_id"], name: "index_asteroids_on_asteroid_type_id"
  end

  create_table "planet_types", force: :cascade do |t|
    t.string "type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "planets", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.decimal "cost"
    t.integer "planet_type_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["planet_type_id"], name: "index_planets_on_planet_type_id"
  end

  create_table "star_types", force: :cascade do |t|
    t.string "type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stars", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.decimal "cost"
    t.integer "star_type_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["star_type_id"], name: "index_stars_on_star_type_id"
  end

  add_foreign_key "asteroids", "asteroid_types"
  add_foreign_key "planets", "planet_types"
  add_foreign_key "stars", "star_types"
end
