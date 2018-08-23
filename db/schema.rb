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

ActiveRecord::Schema.define(version: 2018_08_23_181651) do

  create_table "diets", force: :cascade do |t|
    t.float "carbs"
    t.float "fat"
    t.float "protein"
    t.string "diet_type"
    t.float "calculated_calories"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exercises", force: :cascade do |t|
    t.string "name"
    t.string "exercise_type"
    t.integer "time"
    t.float "calories"
    t.string "instruction_link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "valhallas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "viking_exercises", force: :cascade do |t|
    t.integer "viking_id"
    t.integer "exercise_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exercise_id"], name: "index_viking_exercises_on_exercise_id"
    t.index ["viking_id"], name: "index_viking_exercises_on_viking_id"
  end

  create_table "viking_valhallas", force: :cascade do |t|
    t.integer "viking_id"
    t.integer "valhalla_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["valhalla_id"], name: "index_viking_valhallas_on_valhalla_id"
    t.index ["viking_id"], name: "index_viking_valhallas_on_viking_id"
  end

  create_table "vikings", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.float "weight"
    t.float "body_fat"
    t.string "residence"
    t.float "calories"
    t.string "image_url"
    t.integer "diet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.index ["diet_id"], name: "index_vikings_on_diet_id"
  end

end
