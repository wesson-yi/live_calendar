# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_10_23_020132) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "meetings", force: :cascade do |t|
    t.date "date"
    t.bigint "part_time_id", null: false
    t.bigint "partner_id", null: false
    t.bigint "pioneer_id", null: false
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["part_time_id"], name: "index_meetings_on_part_time_id"
    t.index ["partner_id"], name: "index_meetings_on_partner_id"
    t.index ["pioneer_id"], name: "index_meetings_on_pioneer_id"
  end

  create_table "part_times", force: :cascade do |t|
    t.time "start_at"
    t.string "duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "partners", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pioneers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "meetings", "part_times"
  add_foreign_key "meetings", "partners"
  add_foreign_key "meetings", "pioneers"
end
