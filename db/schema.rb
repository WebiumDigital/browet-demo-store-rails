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

ActiveRecord::Schema.define(version: 20150724080348) do

  create_table "browet_cache", force: :cascade do |t|
    t.string   "path",       null: false
    t.string   "locale"
    t.string   "params",     null: false
    t.text     "json",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "browet_cache", ["path", "locale", "params"], name: "index_browet_cache_on_path_and_locale_and_params", unique: true

end
