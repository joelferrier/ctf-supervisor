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

ActiveRecord::Schema.define(version: 20150927061210) do

  create_table "answers", force: :cascade do |t|
    t.text     "solution"
    t.string   "solution_type"
    t.string   "solution_hash"
    t.boolean  "match_case"
    t.integer  "penalty"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "challenge_id"
  end

  add_index "answers", ["challenge_id"], name: "index_answers_on_challenge_id"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "challenges", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "points"
    t.integer  "number"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "level_id"
    t.integer  "category_id"
  end

  add_index "challenges", ["category_id"], name: "index_challenges_on_category_id"
  add_index "challenges", ["level_id"], name: "index_challenges_on_level_id"

  create_table "hints", force: :cascade do |t|
    t.text     "message"
    t.integer  "points"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "challenge_id"
  end

  add_index "hints", ["challenge_id"], name: "index_hints_on_challenge_id"

  create_table "levels", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "number"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "scenario_id"
  end

  add_index "levels", ["scenario_id"], name: "index_levels_on_scenario_id"

  create_table "scenarios", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
