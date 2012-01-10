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

ActiveRecord::Schema.define(:version => 20120108054511) do

  create_table "active_rounds", :force => true do |t|
    t.integer  "round_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "advertisings", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "channel_incentives", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employee_incentives", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "facilitator_institutes", :force => true do |t|
    t.integer  "facilitator_id"
    t.integer  "institute_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "facilitators", :force => true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "imports", :force => true do |t|
    t.integer  "user_id"
    t.string   "excel_file_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "institute_id"
  end

  create_table "institutes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "markets", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "packagings", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "price"
  end

  create_table "round_advertisings", :force => true do |t|
    t.integer  "round_id"
    t.integer  "player_id"
    t.integer  "advertising_id"
    t.integer  "size_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "round_channel_incentives", :force => true do |t|
    t.integer  "round_id"
    t.integer  "player_id"
    t.integer  "channel_incentive_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "round_debt_fundings", :force => true do |t|
    t.integer  "round_id"
    t.integer  "player_id"
    t.float    "borrowing_value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "round_employee_incentives", :force => true do |t|
    t.integer  "round_id"
    t.integer  "player_id"
    t.integer  "employee_incentive_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "round_factories", :force => true do |t|
    t.integer  "round_id"
    t.integer  "player_id"
    t.integer  "size_id"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "round_markets", :force => true do |t|
    t.integer  "round_id"
    t.integer  "player_id"
    t.integer  "market_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "round_prices", :force => true do |t|
    t.integer  "round_id"
    t.integer  "player_id"
    t.float    "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rounds", :force => true do |t|
    t.integer  "number"
    t.integer  "simulation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "simulations", :force => true do |t|
    t.string   "name"
    t.integer  "max_rounds"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sizes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "start_up_decisions", :force => true do |t|
    t.integer  "player_id"
    t.integer  "simulation_id"
    t.integer  "taste_id"
    t.integer  "type_id"
    t.integer  "topping_id"
    t.integer  "packaging_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "brand_name"
    t.float    "cost_price"
  end

  create_table "student_group_users", :force => true do |t|
    t.integer  "student_group_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "student_groups", :force => true do |t|
    t.string   "name"
    t.integer  "institute_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "simulation_id"
  end

  create_table "tastes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "price"
  end

  create_table "toppings", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "price"
  end

  create_table "types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "price"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "superadmin"
    t.boolean  "admin"
    t.boolean  "student"
    t.boolean  "facilitator"
    t.integer  "institute_id"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
