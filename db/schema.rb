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

ActiveRecord::Schema.define(version: 20170626164312) do

  create_table "channels", id: :string, limit: 36, force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.boolean "is_active"
    t.datetime "created_at"
    t.integer "project_id"
    t.index ["id"], name: "sqlite_autoindex_channels_1", unique: true
    t.index ["project_id"], name: "index_channels_on_project_id"
  end

  create_table "channels_users", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "channel_id"
    t.index ["channel_id"], name: "index_channels_users_on_channel_id"
    t.index ["user_id"], name: "index_channels_users_on_user_id"
  end

  create_table "messages", id: :string, limit: 36, force: :cascade do |t|
    t.text "body"
    t.datetime "posted_at"
    t.integer "user_id"
    t.integer "channel_id"
    t.index ["channel_id"], name: "index_messages_on_channel_id"
    t.index ["id"], name: "sqlite_autoindex_messages_1", unique: true
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "projects", id: :string, limit: 36, force: :cascade do |t|
    t.string "name"
    t.index ["id"], name: "sqlite_autoindex_projects_1", unique: true
  end

  create_table "projects_users", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "project_id"
    t.index ["project_id"], name: "index_projects_users_on_project_id"
    t.index ["user_id"], name: "index_projects_users_on_user_id"
  end

  create_table "users", id: :string, limit: 36, force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "avatar_url"
    t.index ["id"], name: "sqlite_autoindex_users_1", unique: true
  end

end
