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

ActiveRecord::Schema.define(version: 20180228063338) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.string "name"
    t.string "publisher"
    t.string "link"
    t.date "date"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "articles_businesses", id: false, force: :cascade do |t|
    t.bigint "business_id", null: false
    t.bigint "article_id", null: false
    t.index ["article_id", "business_id"], name: "index_articles_businesses_on_article_id_and_business_id"
    t.index ["business_id", "article_id"], name: "index_articles_businesses_on_business_id_and_article_id"
  end

  create_table "articles_industries", id: false, force: :cascade do |t|
    t.bigint "article_id", null: false
    t.bigint "industry_id", null: false
    t.index ["article_id", "industry_id"], name: "index_articles_industries_on_article_id_and_industry_id"
    t.index ["industry_id", "article_id"], name: "index_articles_industries_on_industry_id_and_article_id"
  end

  create_table "articles_players", id: false, force: :cascade do |t|
    t.bigint "article_id", null: false
    t.bigint "player_id", null: false
    t.index ["article_id", "player_id"], name: "index_articles_players_on_article_id_and_player_id"
    t.index ["player_id", "article_id"], name: "index_articles_players_on_player_id_and_article_id"
  end

  create_table "buckets", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "businesses", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "location"
    t.string "dropbox"
    t.string "website"
    t.string "logo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "bucket_id"
    t.index ["bucket_id"], name: "index_businesses_on_bucket_id"
  end

  create_table "businesses_industries", id: false, force: :cascade do |t|
    t.bigint "business_id", null: false
    t.bigint "industry_id", null: false
    t.index ["business_id", "industry_id"], name: "index_businesses_industries_on_business_id_and_industry_id"
    t.index ["industry_id", "business_id"], name: "index_businesses_industries_on_industry_id_and_business_id"
  end

  create_table "businesses_players", id: false, force: :cascade do |t|
    t.bigint "business_id", null: false
    t.bigint "player_id", null: false
    t.index ["business_id", "player_id"], name: "index_businesses_players_on_business_id_and_player_id"
    t.index ["player_id", "business_id"], name: "index_businesses_players_on_player_id_and_business_id"
  end

  create_table "businesses_users", id: false, force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "business_id", null: false
    t.index ["business_id", "user_id"], name: "index_businesses_users_on_business_id_and_user_id"
    t.index ["user_id", "business_id"], name: "index_businesses_users_on_user_id_and_business_id"
  end

  create_table "industries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "industries_players", id: false, force: :cascade do |t|
    t.bigint "industry_id", null: false
    t.bigint "player_id", null: false
    t.index ["industry_id", "player_id"], name: "index_industries_players_on_industry_id_and_player_id"
    t.index ["player_id", "industry_id"], name: "index_industries_players_on_player_id_and_industry_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.string "linkedin"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
