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

ActiveRecord::Schema.define(:version => 20140301184029) do

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.string   "location"
    t.string   "market"
    t.string   "financing_stage"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "companies_investors", :id => false, :force => true do |t|
    t.integer "company_id"
    t.integer "investor_id"
  end

  add_index "companies_investors", ["company_id", "investor_id"], :name => "index_companies_investors_on_company_id_and_investor_id"
  add_index "companies_investors", ["investor_id"], :name => "index_companies_investors_on_investor_id"

  create_table "investors", :force => true do |t|
    t.string   "name"
    t.text     "bio"
    t.integer  "follower_count"
    t.string   "angellist_url"
    t.string   "angellist_image_url"
    t.string   "location"
    t.string   "email_address"
    t.string   "phone_number"
    t.string   "job_title"
    t.string   "company_name"
    t.string   "company_url"
    t.string   "investment_status"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
