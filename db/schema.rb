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

ActiveRecord::Schema.define(version: 2021_06_07_234943) do

  create_table "coordinators", force: :cascade do |t|
    t.string "email", null: false
    t.string "name", null: false
    t.string "phone", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_coordinators_on_email", unique: true
  end

  create_table "participants", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.date "dob"
    t.string "gender"
    t.string "email"
    t.string "phone"
    t.string "contact_method"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "registries", force: :cascade do |t|
    t.string "name", null: false
    t.string "location", null: false
    t.string "status", default: "Open"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name", "location"], name: "index_registries_on_name_and_location", unique: true
  end

  create_table "registry_coordinators", force: :cascade do |t|
    t.integer "registry_id"
    t.integer "coordinator_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "registry_participants", force: :cascade do |t|
    t.integer "participant_id"
    t.integer "registry_id"
    t.string "coordinator_email"
    t.date "enrollment_date"
    t.text "remarks"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["participant_id", "registry_id"], name: "index_registry_participants_on_participant_id_and_registry_id", unique: true
  end

end
