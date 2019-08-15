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

ActiveRecord::Schema.define(version: 2019_08_15_013404) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "exams", force: :cascade do |t|
    t.date "exam_date"
    t.integer "module_number"
    t.string "classroom"
    t.string "subject"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "student_exams", force: :cascade do |t|
    t.boolean "can_present"
    t.bigint "student_id"
    t.bigint "exam_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exam_id"], name: "index_student_exams_on_exam_id"
    t.index ["student_id"], name: "index_student_exams_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "matricula"
    t.string "name"
    t.integer "semester"
    t.string "program_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "student_exams", "exams"
  add_foreign_key "student_exams", "students"
end
