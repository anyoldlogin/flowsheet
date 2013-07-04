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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130704041852) do

  create_table "entries", :force => true do |t|
    t.date     "day"
    t.float    "weight"
    t.integer  "systolic"
    t.integer  "diastolic"
    t.integer  "low_bag"
    t.integer  "med_bag"
    t.integer  "high_bag"
    t.integer  "external_bag"
    t.integer  "initial_drain"
    t.integer  "total_uf"
    t.integer  "avg_dwell_time"
    t.integer  "blood_sugar"
    t.boolean  "epo_vial_opened"
    t.string   "comments"
    t.integer  "monthly_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "entries", ["monthly_id"], :name => "index_entries_on_monthly_id"

  create_table "monthlies", :force => true do |t|
    t.integer  "user_id"
    t.string   "month"
    t.integer  "day"
    t.float    "total_volume"
    t.float    "fill_volume"
    t.integer  "therapy_time"
    t.float    "last_fill"
    t.float    "target_weight"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "monthlies", ["user_id"], :name => "index_monthlies_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "first_name"
    t.string   "last_name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
