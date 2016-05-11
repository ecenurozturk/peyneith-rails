# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160511194723) do

  create_table "homeworks", force: :cascade do |t|
    t.integer  "lesson_id"
    t.string   "subject"
    t.text     "content"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "homeworks", ["lesson_id"], name: "index_homeworks_on_lesson_id"

  create_table "lessons", force: :cascade do |t|
    t.string   "lesson_code"
    t.string   "teacher_name"
    t.integer  "student_id"
    t.integer  "homework_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "lessons", ["homework_id"], name: "index_lessons_on_homework_id"
  add_index "lessons", ["student_id"], name: "index_lessons_on_student_id"

  create_table "lessons_students", force: :cascade do |t|
    t.integer "lesson_id"
    t.integer "student_id"
  end

  add_index "lessons_students", ["lesson_id"], name: "index_lessons_students_on_lesson_id"
  add_index "lessons_students", ["student_id"], name: "index_lessons_students_on_student_id"

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.integer  "age"
    t.integer  "degree"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
