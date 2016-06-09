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

ActiveRecord::Schema.define(version: 20160608232555) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "bookings", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "deal_id"
    t.datetime "date"
    t.integer  "number_of_people"
    t.boolean  "status"
    t.string   "visitor_first_name"
    t.string   "visitor_last_name"
    t.string   "visitor_email"
    t.string   "visitor_phone"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "bookings", ["deal_id"], name: "index_bookings_on_deal_id", using: :btree
  add_index "bookings", ["user_id"], name: "index_bookings_on_user_id", using: :btree

  create_table "deals", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "start_date"
    t.datetime "end_date"
    t.boolean  "status"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "discount_kind"
    t.integer  "discount_value"
    t.integer  "maximum_deal_capacity"
    t.boolean  "monday"
    t.boolean  "tuesday"
    t.boolean  "wednesday"
    t.boolean  "thursday"
    t.boolean  "friday"
    t.boolean  "saturday"
    t.boolean  "sunday"
    t.integer  "restaurant_id"
  end

  add_index "deals", ["restaurant_id"], name: "index_deals_on_restaurant_id", using: :btree

  create_table "photos", force: :cascade do |t|
    t.integer  "restaurant_id"
    t.string   "image_string"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "photos", ["restaurant_id"], name: "index_photos_on_restaurant_id", using: :btree

  create_table "restaurants", force: :cascade do |t|
    t.string   "name"
    t.string   "email_address"
    t.integer  "phone_number"
    t.integer  "rating"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "street_name"
    t.integer  "street_number"
    t.string   "city_name"
    t.string   "country_name"
    t.string   "postal_code"
    t.integer  "user_id"
  end

  add_index "restaurants", ["user_id"], name: "index_restaurants_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "kind"
    t.boolean  "admin",                  default: false, null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "bookings", "deals"
  add_foreign_key "bookings", "users"
  add_foreign_key "deals", "restaurants"
  add_foreign_key "photos", "restaurants"
  add_foreign_key "restaurants", "users"
end
