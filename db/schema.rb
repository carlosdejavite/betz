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

ActiveRecord::Schema.define(version: 20140710044103) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bets", force: true do |t|
    t.integer  "match_id"
    t.integer  "betting_pool_id"
    t.integer  "score_a"
    t.integer  "score_b"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "points_won_in_bet"
    t.integer  "team_won_penalties_id"
  end

  create_table "betting_pools", force: true do |t|
    t.integer  "winner_id"
    t.integer  "runnerup_id"
    t.integer  "user_id"
    t.integer  "tournament_id"
    t.float    "bet_amount"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "points_won_in_bet"
    t.integer  "league_id"
  end

  create_table "groups", force: true do |t|
    t.string   "name"
    t.integer  "tournament_id"
    t.integer  "point"
    t.integer  "bonus"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_rankable"
  end

  create_table "leagues", force: true do |t|
    t.string   "name"
    t.float    "first_place_prize"
    t.float    "second_place_prize"
    t.float    "third_place_prize"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "matches", force: true do |t|
    t.datetime "date_time"
    t.integer  "group_id"
    t.integer  "team_a_id"
    t.integer  "score_a"
    t.integer  "team_b_id"
    t.integer  "score_b"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "team_won_penalties_id"
  end

  create_table "teams", force: true do |t|
    t.string   "name"
    t.string   "abbreviation"
    t.string   "flag_filename"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tournaments", force: true do |t|
    t.string   "name"
    t.integer  "admin_tournament_id"
    t.integer  "winner_point"
    t.integer  "runnerup_point"
    t.integer  "team_in_finals_point"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "winner_id"
    t.integer  "runnerup_id"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
