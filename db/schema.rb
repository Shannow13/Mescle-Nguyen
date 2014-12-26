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

ActiveRecord::Schema.define(version: 20141226095037) do

  create_table "autors", force: true do |t|
    t.string   "name"
    t.string   "first_name"
    t.string   "nationality"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "books", force: true do |t|
    t.string   "name"
    t.string   "autor_name"
    t.string   "editor"
    t.string   "collection"
    t.string   "kind"
    t.string   "cote"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "books_kinds", force: true do |t|
    t.integer  "book_id"
    t.integer  "kind_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "books_kinds", ["book_id"], name: "index_books_kinds_on_book_id"
  add_index "books_kinds", ["kind_id"], name: "index_books_kinds_on_kind_id"

  create_table "kinds", force: true do |t|
    t.string   "name"
    t.string   "cote"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
