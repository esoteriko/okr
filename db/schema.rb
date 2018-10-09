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

ActiveRecord::Schema.define(version: 2018_10_09_013714) do

  create_table "assignments", force: :cascade do |t|
    t.integer "objective_id"
    t.integer "group_id"
    t.string "assigned"
    t.date "at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_assignments_on_group_id"
    t.index ["objective_id"], name: "index_assignments_on_objective_id"
  end

  create_table "group_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.integer "group_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_type_id"], name: "index_groups_on_group_type_id"
  end

  create_table "groups_objectives", id: false, force: :cascade do |t|
    t.integer "group_id"
    t.integer "objective_id"
    t.index ["group_id"], name: "index_groups_objectives_on_group_id"
    t.index ["objective_id"], name: "index_groups_objectives_on_objective_id"
  end

  create_table "key_results", force: :cascade do |t|
    t.string "description"
    t.date "fecha"
    t.integer "value"
    t.integer "objective_id"
    t.integer "kr_measure_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["kr_measure_id"], name: "index_key_results_on_kr_measure_id"
    t.index ["objective_id"], name: "index_key_results_on_objective_id"
  end

  create_table "kr_measures", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "objectives", force: :cascade do |t|
    t.string "description"
    t.integer "period_value"
    t.integer "tiempo_id"
    t.integer "user_id"
    t.integer "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_objectives_on_group_id"
    t.index ["tiempo_id"], name: "index_objectives_on_tiempo_id"
    t.index ["user_id"], name: "index_objectives_on_user_id"
  end

  create_table "tiempos", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
