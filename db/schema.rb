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

ActiveRecord::Schema.define(version: 20160412011303) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "districts", force: :cascade do |t|
    t.string   "name"
    t.integer  "district_manager_id", null: false
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "stores", force: :cascade do |t|
    t.string   "name",             null: false
    t.string   "address",          null: false
    t.decimal  "longitude"
    t.decimal  "latitude"
    t.integer  "store_manager_id"
    t.integer  "system_id"
    t.integer  "district_id",      null: false
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "stores", ["district_id"], name: "index_stores_on_district_id", using: :btree
  add_index "stores", ["store_manager_id"], name: "index_stores_on_store_manager_id", using: :btree
  add_index "stores", ["system_id"], name: "index_stores_on_system_id", using: :btree

  create_table "systems", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trained_systems", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "system_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "trained_systems", ["system_id"], name: "index_trained_systems_on_system_id", using: :btree
  add_index "trained_systems", ["user_id"], name: "index_trained_systems_on_user_id", using: :btree

  create_table "user_types", force: :cascade do |t|
    t.string   "name",          null: false
    t.integer  "permission_id", null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",            null: false
    t.string   "password_digest", null: false
    t.string   "session_token",   null: false
    t.string   "email"
    t.string   "phone_number"
    t.date     "hire_date"
    t.string   "address",         null: false
    t.decimal  "longitude"
    t.decimal  "latitude"
    t.integer  "user_type_id",    null: false
    t.integer  "district_id"
    t.integer  "store_id"
    t.integer  "training_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["district_id"], name: "index_users_on_district_id", using: :btree
  add_index "users", ["store_id"], name: "index_users_on_store_id", using: :btree
  add_index "users", ["training_id"], name: "index_users_on_training_id", using: :btree
  add_index "users", ["user_type_id"], name: "index_users_on_user_type_id", using: :btree

end
