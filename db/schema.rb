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

ActiveRecord::Schema.define(version: 20140223190221) do

  create_table "admins", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true

  create_table "purchases", force: true do |t|
    t.integer  "quote_id"
    t.string   "commodity"
    t.string   "supplier"
    t.string   "price"
    t.string   "brand"
    t.string   "pack_size"
    t.string   "volume"
    t.string   "shipment"
    t.string   "po_number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "purchases", ["user_id"], name: "index_purchases_on_user_id"

  create_table "quotes", force: true do |t|
    t.string   "price"
    t.string   "commodity"
    t.string   "supplier"
    t.string   "brand"
    t.text     "shipment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "rfq_id"
    t.integer  "user_id"
    t.string   "volume"
    t.string   "pack_size"
    t.boolean  "purchase",   default: false
    t.boolean  "confirm",    default: false
  end

  add_index "quotes", ["user_id"], name: "index_quotes_on_user_id"

  create_table "rfqs", force: true do |t|
    t.string   "commodity"
    t.string   "brand"
    t.string   "pack_size"
    t.string   "volume"
    t.text     "shipment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.boolean  "status"
  end

  add_index "rfqs", ["user_id"], name: "index_rfqs_on_user_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
