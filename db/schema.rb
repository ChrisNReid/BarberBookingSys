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

ActiveRecord::Schema.define(version: 2020_12_11_190635) do

  create_table "employees", force: :cascade do |t|
    t.string "FirstName"
    t.string "LastName"
    t.string "PhoneNumber"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees_emails", force: :cascade do |t|
    t.integer "Employees_id"
    t.string "EmpEmail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Employees_id"], name: "index_employees_emails_on_Employees_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.integer "user_id"
    t.string "Name"
    t.datetime "StartTime"
    t.datetime "EndTime"
    t.integer "employee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_reservations_on_employee_id"
    t.index ["id"], name: "index_reservations_on_id", unique: true
    t.index ["user_id"], name: "index_reservations_on_user_id"
    t.index [nil], name: "index_reservations_on_employee"
    t.index [nil], name: "index_reservations_on_user"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id"], name: "index_reviews_on_id", unique: true
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
