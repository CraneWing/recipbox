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

ActiveRecord::Schema.define(version: 20150626231846) do

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  limit: 191, default: "", null: false
    t.string   "encrypted_password",     limit: 191, default: "", null: false
    t.string   "reset_password_token",   limit: 191
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 191
    t.string   "last_sign_in_ip",        limit: 191
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "blog_comments", force: :cascade do |t|
    t.text     "body",         limit: 65535
    t.integer  "blog_post_id", limit: 4
    t.integer  "user_id",      limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "blog_posts", force: :cascade do |t|
    t.string   "title",               limit: 191
    t.text     "body",                limit: 65535
    t.integer  "blogger_id",          limit: 4
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
    t.string   "blog_img",            limit: 191
    t.integer  "blog_comments_count", limit: 4,     default: 0, null: false
  end

  create_table "bloggers", force: :cascade do |t|
    t.string   "name",        limit: 191
    t.text     "bio",         limit: 65535
    t.string   "blogger_img", limit: 191
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name", limit: 191, default: "", null: false
  end

  create_table "category_recipes", id: false, force: :cascade do |t|
    t.integer "category_id", limit: 4
    t.integer "recipe_id",   limit: 4
  end

  create_table "comments", force: :cascade do |t|
    t.text     "body",       limit: 65535
    t.integer  "user_id",    limit: 4
    t.integer  "post_id",    limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title",          limit: 191
    t.text     "body",           limit: 65535
    t.integer  "topic_id",       limit: 4
    t.integer  "user_id",        limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.integer  "comments_count", limit: 4
  end

  create_table "recipes", force: :cascade do |t|
    t.string   "title",         limit: 191
    t.text     "ingredients",   limit: 65535
    t.text     "steps",         limit: 65535
    t.integer  "user_id",       limit: 4
    t.datetime "created_at",                                           null: false
    t.datetime "updated_at",                                           null: false
    t.string   "recipe_img",    limit: 191,   default: "dinner-plate"
    t.text     "comments",      limit: 65535
    t.integer  "approved",      limit: 1,     default: 0
    t.string   "prep",          limit: 191
    t.string   "cook",          limit: 191
    t.string   "yield",         limit: 191
    t.integer  "reviews_count", limit: 4,     default: 0,              null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.text     "body",       limit: 65535
    t.integer  "stars",      limit: 4
    t.integer  "user_id",    limit: 4
    t.integer  "recipe_id",  limit: 4
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.integer  "approved",   limit: 4,     default: 0
  end

  create_table "topics", force: :cascade do |t|
    t.string   "title",       limit: 191
    t.text     "description", limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "posts_count", limit: 4,     default: 0, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255,   default: "", null: false
    t.string   "encrypted_password",     limit: 255,   default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name",             limit: 45
    t.string   "last_name",              limit: 45
    t.string   "username",               limit: 30
    t.string   "avatar",                 limit: 255
    t.string   "location",               limit: 255
    t.text     "profile",                limit: 65535
    t.integer  "reviews_count",          limit: 4,     default: 0,  null: false
    t.integer  "recipes_count",          limit: 4,     default: 0,  null: false
    t.integer  "posts_count",            limit: 4,     default: 0,  null: false
    t.integer  "comments_count",         limit: 4,     default: 0,  null: false
    t.integer  "blog_comments_count",    limit: 4,     default: 0,  null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
