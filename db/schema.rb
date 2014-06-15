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

ActiveRecord::Schema.define(version: 20140615111644) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "asks", force: true do |t|
    t.text     "question"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "line1"
    t.text     "line2"
    t.text     "line3"
    t.text     "line4"
    t.text     "line5"
    t.text     "line6"
  end

  create_table "hexes", id: false, force: true do |t|
    t.integer "hex_id",   null: false
    t.text    "name",     null: false
    t.text    "meaning",  null: false
    t.text    "keywords", null: false
    t.text    "symbol",   null: false
    t.text    "top",      null: false
    t.text    "bottom",   null: false
  end

  create_table "questions", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "ask"
  end

end
