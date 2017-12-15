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

ActiveRecord::Schema.define(version: 20171215235757) do

  create_table "patients", force: :cascade do |t|
    t.string "last_name"
    t.string "first_name"
    t.string "date_of_birth"
    t.string "gender"
    t.string "reason_for_visit"
    t.string "insurance"
    t.string "policy_number"
    t.integer "telephone"
    t.string "address"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "patient_id"
    t.index ["patient_id"], name: "index_patients_on_patient_id"
  end

  create_table "practitioners", force: :cascade do |t|
    t.integer "identification"
    t.string "last_name"
    t.string "first_name"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["identification"], name: "index_practitioners_on_identification", unique: true
  end

end
