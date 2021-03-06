# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20080923000521) do

  create_table "gift_exchanges", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gift_exchanges_users", :id => false, :force => true do |t|
    t.integer "gift_exchange_id"
    t.integer "user_id"
  end

  create_table "gift_items", :force => true do |t|
    t.integer  "gift_list_id"
    t.integer  "position"
    t.string   "name"
    t.integer  "quantity"
    t.boolean  "purchased"
    t.string   "purchased_by"
    t.datetime "purchased_at"
  end

  create_table "gift_lists", :force => true do |t|
    t.string  "name"
    t.integer "user_id"
  end

  create_table "people", :force => true do |t|
    t.string "name"
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id"
    t.text     "data"
    t.datetime "updated_at"
  end

  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"
  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"

  create_table "users", :force => true do |t|
    t.string "name"
    t.string "hashed_password"
    t.string "salt"
  end

end
