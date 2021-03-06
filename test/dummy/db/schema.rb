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

ActiveRecord::Schema.define(:version => 20140228151956) do

  create_table "booking_entries", :force => true do |t|
    t.integer  "persona_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone"
    t.string   "source"
    t.datetime "move_in"
    t.datetime "deleted_at"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "booking_events", :force => true do |t|
    t.integer  "service_id"
    t.integer  "entry_id"
    t.datetime "start_at"
    t.datetime "end_at"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "booking_schedules", :force => true do |t|
    t.integer  "service_id"
    t.string   "name"
    t.integer  "day"
    t.boolean  "day_off"
    t.integer  "from_hour"
    t.integer  "from_min"
    t.integer  "to_hour"
    t.integer  "to_min"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "booking_service_settings", :force => true do |t|
    t.integer  "service_id"
    t.string   "name"
    t.integer  "day"
    t.boolean  "day_off"
    t.integer  "from_hour"
    t.integer  "from_min"
    t.integer  "to_hour"
    t.integer  "to_min"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "booking_services", :force => true do |t|
    t.integer  "persona_id"
    t.integer  "user_id"
    t.string   "name"
    t.text     "description"
    t.integer  "duration"
    t.integer  "participant"
    t.datetime "deleted_at"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
