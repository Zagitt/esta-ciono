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

ActiveRecord::Schema.define(version: 20160609215827) do

  create_table "districts", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "zipcode",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.integer  "district_id", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "events", ["district_id"], name: "index_events_on_district_id", using: :btree

  create_table "posts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "first_name", limit: 255
    t.string   "last_name",  limit: 255
    t.datetime "born_at"
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id", using: :btree

  create_table "reservations", force: :cascade do |t|
    t.integer  "space_id",         limit: 4
    t.integer  "user_id",          limit: 4
    t.date     "reservation_date"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "reservations", ["space_id"], name: "index_reservations_on_space_id", using: :btree
  add_index "reservations", ["user_id"], name: "index_reservations_on_user_id", using: :btree

  create_table "spaces", force: :cascade do |t|
    t.text     "description",          limit: 65535
    t.string   "address",              limit: 255
    t.integer  "district_id",          limit: 4
    t.float    "price",                limit: 24
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "name",                 limit: 255
    t.string   "content_file_name",    limit: 255
    t.string   "content_content_type", limit: 255
    t.integer  "content_file_size",    limit: 4
    t.datetime "content_updated_at"
    t.float    "latitude",             limit: 24
    t.float    "longitude",            limit: 24
  end

  add_index "spaces", ["district_id"], name: "index_spaces_on_district_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.integer  "role",                   limit: 4
    t.string   "name",                   limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "events", "districts"
  add_foreign_key "profiles", "users"
  add_foreign_key "reservations", "spaces"
  add_foreign_key "reservations", "users"
  add_foreign_key "spaces", "districts"
end
