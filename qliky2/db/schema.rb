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

ActiveRecord::Schema.define(version: 20150803043959) do

  create_table "qdatasets", force: :cascade do |t|
    t.integer  "quser_id"
    t.string   "qdtitle",    default: "default.csv"
    t.string   "qdtype",     default: "csv"
    t.boolean  "qdprivacy",  default: true
    t.string   "qdpermkey",  default: ""
    t.string   "qpfd",       default: "yet developed"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  add_index "qdatasets", ["quser_id"], name: "index_qdatasets_on_quser_id"

  create_table "qorganizations", force: :cascade do |t|
    t.integer  "quser_id"
    t.string   "qotitle",      default: "An organization"
    t.boolean  "qoprivacy",    default: true
    t.string   "qopermkey",    default: "yet developed"
    t.boolean  "qosubscriber", default: false
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  add_index "qorganizations", ["quser_id"], name: "index_qorganizations_on_quser_id"

  create_table "qusers", force: :cascade do |t|
    t.string   "displayname", default: "anonymous"
    t.string   "encrypass",   default: "***encrypted***"
    t.string   "qmail",       default: "abc123@gmail.c0m"
    t.boolean  "qsubscriber", default: false
    t.boolean  "qprivacy",    default: false
    t.integer  "qoid",        default: 1
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  create_table "qviews", force: :cascade do |t|
    t.integer  "quser_id"
    t.integer  "qdataset_id"
    t.string   "qvtitle",        default: "new view"
    t.boolean  "qvprivacy",      default: true
    t.string   "qdpermkey",      default: ""
    t.string   "dyscogenerator", default: "yet developed"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  add_index "qviews", ["qdataset_id"], name: "index_qviews_on_qdataset_id"
  add_index "qviews", ["quser_id"], name: "index_qviews_on_quser_id"

end
