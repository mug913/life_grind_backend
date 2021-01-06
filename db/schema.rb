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

ActiveRecord::Schema.define(version: 2021_01_06_021857) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "goal_records", force: :cascade do |t|
    t.datetime "date"
    t.string "field_1_type"
    t.string "field_1_data"
    t.string "field_2_type"
    t.string "field_2_data"
    t.string "field_3_type"
    t.string "field_3_data"
    t.bigint "goal_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "field_1_name"
    t.string "field_2_name"
    t.string "field_3_name"
    t.index ["goal_id"], name: "index_goal_records_on_goal_id"
  end

  create_table "goals", force: :cascade do |t|
    t.string "name"
    t.integer "field_number"
    t.integer "position"
    t.integer "streak"
    t.integer "level"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_goals_on_user_id"
  end

end
