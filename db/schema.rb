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

ActiveRecord::Schema.define(version: 20170624164603) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "gallery_items", force: :cascade do |t|
    t.integer  "gallery_id", null: false
    t.string   "image",      null: false
    t.string   "alt"
    t.text     "caption"
    t.integer  "prior"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "gallery_items", ["gallery_id"], name: "index_gallery_items_on_gallery_id", using: :btree

  create_table "pages", force: :cascade do |t|
    t.string   "slug",       null: false
    t.string   "uip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "pages", ["slug"], name: "index_pages_on_slug", unique: true, using: :btree

  create_table "vitrage_owners_pieces_slots", force: :cascade do |t|
    t.integer  "owner_id",               null: false
    t.string   "owner_type",             null: false
    t.integer  "piece_id"
    t.string   "piece_type"
    t.integer  "ordn",       default: 9, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "vitrage_owners_pieces_slots", ["ordn"], name: "index_vitrage_owners_pieces_slots_on_ordn", using: :btree
  add_index "vitrage_owners_pieces_slots", ["owner_type", "owner_id"], name: "index_vitrage_owners_pieces_slots_on_owner_type_and_owner_id", using: :btree
  add_index "vitrage_owners_pieces_slots", ["piece_type", "piece_id"], name: "index_vitrage_owners_pieces_slots_on_piece_type_and_piece_id", using: :btree

  create_table "vtrg_galleries", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vtrg_texts", force: :cascade do |t|
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vtrg_wide_images", force: :cascade do |t|
    t.string   "image"
    t.string   "alt"
    t.text     "caption"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
