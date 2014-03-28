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

ActiveRecord::Schema.define(version: 20140326125558) do

  create_table "cookbooks", force: true do |t|
    t.string   "name"
    t.integer  "node_id"
    t.integer  "role_id"
    t.string   "current_version"
    t.text     "description"
    t.boolean  "aix"
    t.boolean  "linux"
    t.boolean  "windows"
    t.text     "comments"
    t.integer  "metadata_id"
    t.integer  "template_id"
    t.boolean  "has_template"
    t.boolean  "released"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "main_panels", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "metadata", force: true do |t|
    t.string   "name"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "metadatas", force: true do |t|
    t.string   "name"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nodes", force: true do |t|
    t.string   "name"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "plataforms", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.string   "name"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "templates", force: true do |t|
    t.string   "name"
    t.string   "expected_name"
    t.string   "file_path"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
