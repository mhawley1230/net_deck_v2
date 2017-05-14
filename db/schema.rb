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

ActiveRecord::Schema.define(version: 20170514151123) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "decks", force: :cascade do |t|
    t.string "name", null: false
    t.integer "placing", null: false
    t.string "player", null: false
    t.bigint "tournament_id", null: false
    t.index ["tournament_id"], name: "index_decks_on_tournament_id"
  end

  create_table "tournaments", force: :cascade do |t|
    t.string "name", null: false
    t.string "location", null: false
    t.string "format", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "no_of_players", null: false
  end

end
