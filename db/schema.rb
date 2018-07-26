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

ActiveRecord::Schema.define(version: 2018_07_25_230818) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.datetime "reminder_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chunk_hierarchies", id: false, force: :cascade do |t|
    t.integer "ancestor_id", null: false
    t.integer "descendant_id", null: false
    t.integer "generations", null: false
    t.index ["ancestor_id", "descendant_id", "generations"], name: "chunk_anc_desc_idx", unique: true
    t.index ["descendant_id"], name: "chunk_desc_idx"
  end

  create_table "chunks", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.time "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "parent_id"
  end

  create_table "facets", force: :cascade do |t|
    t.bigint "task_id"
    t.bigint "chunk_id"
    t.bigint "person_id"
    t.bigint "appointment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["appointment_id"], name: "index_facets_on_appointment_id"
    t.index ["chunk_id"], name: "index_facets_on_chunk_id"
    t.index ["person_id"], name: "index_facets_on_person_id"
    t.index ["task_id", "person_id", "appointment_id"], name: "fk_uniqueness_constraint", unique: true
    t.index ["task_id"], name: "index_facets_on_task_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "phone_number"
    t.string "address"
    t.string "email"
    t.date "birthdate"
    t.string "preferred_name"
    t.string "website"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.datetime "due_date"
    t.integer "priority"
    t.integer "completion_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "facets", "appointments"
  add_foreign_key "facets", "people"
  add_foreign_key "facets", "tasks"
end
