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

ActiveRecord::Schema.define(version: 20150510000153) do

  create_table "entries", force: true do |t|
    t.string   "nick"
    t.integer  "r1"
    t.integer  "r2"
    t.integer  "r3"
    t.integer  "r4"
    t.integer  "r5"
    t.integer  "r6"
    t.integer  "tournament_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "entries", ["tournament_id"], name: "index_entries_on_tournament_id"

  create_table "tournaments", force: true do |t|
    t.boolean  "open"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
