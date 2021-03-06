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

ActiveRecord::Schema.define(version: 20171228184356) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "canvas_question_as", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "canvas_question_bs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patient_scores", force: :cascade do |t|
    t.integer "total"
    t.bigint "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_patient_scores_on_patient_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "date_of_birth"
    t.string "gender"
    t.text "reason_for_visit"
    t.string "insurance"
    t.string "policy_number"
    t.string "telephone"
    t.string "address"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "practitioner_id"
    t.index ["practitioner_id"], name: "index_patients_on_practitioner_id"
  end

  create_table "practitioners", force: :cascade do |t|
    t.integer "identification"
    t.string "last_name"
    t.string "first_name"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "patient_id"
    t.string "patient"
    t.bigint "practitioner_id"
    t.string "password_reset_token"
    t.datetime "password_reset_sent_at"
    t.string "practitioner"
    t.string "email"
    t.index ["identification"], name: "index_practitioners_on_identification", unique: true
    t.index ["patient_id"], name: "index_practitioners_on_patient_id"
    t.index ["practitioner_id"], name: "index_practitioners_on_practitioner_id"
  end

  create_table "question_answers", force: :cascade do |t|
    t.bigint "question_id"
    t.integer "score"
    t.string "patient_answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "practitioners_id"
    t.index ["practitioners_id"], name: "index_question_answers_on_practitioners_id"
    t.index ["question_id"], name: "index_question_answers_on_question_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "question"
    t.integer "point"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "intro"
    t.integer "subject_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "patient_scores", "patients"
  add_foreign_key "patients", "practitioners"
  add_foreign_key "practitioners", "practitioners"
  add_foreign_key "question_answers", "practitioners", column: "practitioners_id"
  add_foreign_key "question_answers", "questions"
end
