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

ActiveRecord::Schema.define(:version => 20120414142709) do

  create_table "courses", :force => true do |t|
    t.string   "name"
    t.integer  "duration"
    t.text     "description"
    t.text     "objectives"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "registrations", :force => true do |t|
    t.integer  "registrable_id"
    t.string   "registrable_type"
    t.integer  "course_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "registrations", ["course_id"], :name => "index_registrations_on_course_id"
  add_index "registrations", ["registrable_id"], :name => "index_registrations_on_registrable_id"

  create_table "students", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.date     "birth_date"
    t.string   "phone"
    t.string   "sex"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "teachers", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.date     "birth_date"
    t.string   "sex"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
