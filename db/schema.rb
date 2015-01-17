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

ActiveRecord::Schema.define(version: 20150117110939) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bill_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bills", force: true do |t|
    t.string   "name"
    t.float    "amount"
    t.date     "deadline"
    t.integer  "bill_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "bills", ["bill_type_id"], name: "index_bills_on_bill_type_id", using: :btree

  create_table "proportions", force: true do |t|
    t.decimal  "percentage",   precision: 2, scale: 0
    t.integer  "grouping_id"
    t.integer  "bill_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "proportions", ["bill_type_id"], name: "index_proportions_on_bill_type_id", using: :btree
  add_index "proportions", ["grouping_id"], name: "index_proportions_on_grouping_id", using: :btree

end
