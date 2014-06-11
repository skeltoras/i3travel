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

ActiveRecord::Schema.define(version: 20140610142506) do

  create_table "customers", force: true do |t|
    t.string   "customer_name",       default: "",    null: false
    t.string   "customer_street",     default: "",    null: false
    t.string   "customer_plz",        default: "",    null: false
    t.string   "customer_city",       default: "",    null: false
    t.string   "customer_state",      default: "",    null: false
    t.string   "customer_telephone",  default: "",    null: false
    t.string   "customer_contact"
    t.string   "customer_telefax"
    t.string   "customer_email"
    t.string   "customer_homepage"
    t.boolean  "customer_is_active",  default: true,  null: false
    t.boolean  "customer_show_email", default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rentings", force: true do |t|
    t.string   "renting_object",           default: "",    null: false
    t.string   "renting_min_duration",     default: "",    null: false
    t.string   "renting_cost",             default: "",    null: false
    t.string   "renting_cost_duration",    default: "",    null: false
    t.string   "renting_location",         default: "",    null: false
    t.string   "renting_region",           default: "",    null: false
    t.string   "renting_state",            default: "",    null: false
    t.string   "renting_display_offer",    default: "",    null: false
    t.string   "renting_object_shortdesc", default: "",    null: false
    t.text     "renting_object_longdesc",  default: "",    null: false
    t.boolean  "renting_gallery",          default: false, null: false
    t.boolean  "renting_header_picture",   default: false, null: false
    t.boolean  "renting_header_slider",    default: false, null: false
    t.boolean  "renting_video",            default: false, null: false
    t.boolean  "renting_calendar",         default: false, null: false
    t.boolean  "renting_form",             default: false, null: false
    t.date     "renting_calendar_start"
    t.date     "renting_calendar_end"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
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

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
