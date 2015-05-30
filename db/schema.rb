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

ActiveRecord::Schema.define(version: 20150530122530) do

  create_table "albums", force: :cascade do |t|
    t.string   "name"
    t.string   "year"
    t.string   "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "likes"
  end

  create_table "albums_artists", id: false, force: :cascade do |t|
    t.integer "artist_id", null: false
    t.integer "album_id",  null: false
  end

  create_table "artists", force: :cascade do |t|
    t.string   "name"
    t.text     "bio"
    t.string   "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "cover"
    t.integer  "likes"
  end

  create_table "songs", force: :cascade do |t|
    t.string   "name"
    t.integer  "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "album_id"
    t.integer  "likes"
  end

  add_index "songs", ["album_id"], name: "index_songs_on_album_id"

end
