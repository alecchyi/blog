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

ActiveRecord::Schema.define(:version => 20130101154357) do

  create_table "articles", :force => true do |t|
    t.string   "title",      :limit => 100,  :null => false
    t.string   "subtitle",   :limit => 100
    t.string   "summary",    :limit => 500,  :null => false
    t.string   "content",    :limit => 3000, :null => false
    t.integer  "status",     :limit => 2,    :null => false
    t.integer  "user_id",                    :null => false
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "categories", :force => true do |t|
    t.integer  "parent_id",  :limit => 8,                 :null => false
    t.string   "name",       :limit => 50,                :null => false
    t.integer  "status",     :limit => 1,  :default => 0, :null => false
    t.datetime "created_at",                              :null => false
    t.datetime "updated_at",                              :null => false
  end

  create_table "category_relations", :force => true do |t|
    t.integer  "obj_id",                        :null => false
    t.integer  "category_id",                   :null => false
    t.integer  "status",         :default => 0
    t.integer  "is_recommended", :default => 0
    t.integer  "is_toped",       :default => 0
    t.datetime "recommended_at"
    t.datetime "toped_at"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "collectibles", :force => true do |t|
    t.string   "title",       :limit => 50,                :null => false
    t.string   "obj_url",                                  :null => false
    t.string   "description"
    t.integer  "status",                    :default => 0
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
  end

  create_table "comments", :force => true do |t|
    t.integer  "article_id",                                :null => false
    t.integer  "user_id",                                   :null => false
    t.integer  "status",                     :default => 0
    t.string   "content",    :limit => 1000,                :null => false
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  create_table "resources", :force => true do |t|
    t.integer  "obj_id"
    t.integer  "obj_type"
    t.integer  "status"
    t.string   "title"
    t.string   "summary"
    t.string   "attatch_file_name"
    t.integer  "attatch_file_size"
    t.string   "attatch_content_type"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username",   :limit => 50,                        :null => false
    t.string   "password",   :limit => 50,  :default => "123456", :null => false
    t.string   "nickname"
    t.string   "email",      :limit => 100,                       :null => false
    t.integer  "status",     :limit => 2,   :default => 0
    t.string   "site_url"
    t.string   "remark"
    t.string   "phone"
    t.integer  "identity",   :limit => 2,   :default => 0
    t.datetime "created_at",                                      :null => false
    t.datetime "updated_at",                                      :null => false
  end

end
