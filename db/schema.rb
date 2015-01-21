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

ActiveRecord::Schema.define(version: 20150121203850) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bill_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "group_id"
  end

  add_index "bill_types", ["group_id"], name: "index_bill_types_on_group_id", using: :btree

  create_table "bills", force: true do |t|
    t.string   "name"
    t.float    "amount"
    t.date     "deadline"
    t.integer  "bill_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "group_id"
  end

  add_index "bills", ["bill_type_id"], name: "index_bills_on_bill_type_id", using: :btree
  add_index "bills", ["group_id"], name: "index_bills_on_group_id", using: :btree

  create_table "groupings", force: true do |t|
    t.integer  "user_id"
    t.integer  "group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", force: true do |t|
    t.string "name"
    t.string "description"
    t.float  "total"
  end

  create_table "proportions", force: true do |t|
    t.integer  "bill_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "bill_id"
    t.integer  "user_id"
    t.float    "amount"
  end

  add_index "proportions", ["bill_id"], name: "index_proportions_on_bill_id", using: :btree
  add_index "proportions", ["bill_type_id"], name: "index_proportions_on_bill_type_id", using: :btree
  add_index "proportions", ["user_id"], name: "index_proportions_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "provider"
    t.string   "uid"
    t.string   "user_avatar"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
