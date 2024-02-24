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

ActiveRecord::Schema[7.1].define(version: 2024_02_24_035035) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hole_scores", force: :cascade do |t|
    t.bigint "member_round_id", null: false
    t.bigint "hole_id", null: false
    t.integer "strokes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hole_id"], name: "index_hole_scores_on_hole_id"
    t.index ["member_round_id"], name: "index_hole_scores_on_member_round_id"
  end

  create_table "holes", force: :cascade do |t|
    t.bigint "course_id", null: false
    t.integer "number"
    t.integer "par"
    t.integer "distance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_holes_on_course_id"
  end

  create_table "member_rounds", force: :cascade do |t|
    t.bigint "member_id", null: false
    t.bigint "round_id", null: false
    t.integer "total_score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["member_id"], name: "index_member_rounds_on_member_id"
    t.index ["round_id"], name: "index_member_rounds_on_round_id"
  end

  create_table "members", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "first_name"
    t.string "last_name"
    t.date "date_of_birth"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_members_on_email", unique: true
    t.index ["reset_password_token"], name: "index_members_on_reset_password_token", unique: true
  end

  create_table "rounds", force: :cascade do |t|
    t.datetime "date"
    t.bigint "course_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_rounds_on_course_id"
  end

  add_foreign_key "hole_scores", "holes"
  add_foreign_key "hole_scores", "member_rounds"
  add_foreign_key "holes", "courses"
  add_foreign_key "member_rounds", "members"
  add_foreign_key "member_rounds", "rounds"
  add_foreign_key "rounds", "courses"
end
