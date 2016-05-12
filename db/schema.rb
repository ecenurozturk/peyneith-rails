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

ActiveRecord::Schema.define(version: 20160512105919) do

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
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

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
    t.integer  "school_number"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.integer  "school_number"
    t.integer  "is_teacher"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
