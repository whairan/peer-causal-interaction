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

ActiveRecord::Schema.define(version: 20170129223335) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "url"
    t.integer  "stock_id"
    t.text     "about"
    t.text     "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["stock_id"], name: "index_companies_on_stock_id", using: :btree
  end

  create_table "diseases", force: :cascade do |t|
    t.string   "name"
    t.text     "about"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drug_diseases", force: :cascade do |t|
    t.integer  "drug_id"
    t.integer  "disease_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["disease_id"], name: "index_drug_diseases_on_disease_id", using: :btree
    t.index ["drug_id"], name: "index_drug_diseases_on_drug_id", using: :btree
  end

  create_table "drugs", force: :cascade do |t|
    t.string   "name"
    t.text     "about"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phases", force: :cascade do |t|
    t.string   "name"
    t.integer  "status_id"
    t.date     "start_date"
    t.date     "end_date"
    t.text     "about"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "trial_id"
    t.index ["status_id"], name: "index_phases_on_status_id", using: :btree
    t.index ["trial_id"], name: "index_phases_on_trial_id", using: :btree
  end

  create_table "statuses", force: :cascade do |t|
    t.string   "name"
    t.text     "about"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stock_markets", force: :cascade do |t|
    t.string   "name"
    t.text     "about"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stock_types", force: :cascade do |t|
    t.string   "name"
    t.text     "about"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stocks", force: :cascade do |t|
    t.string   "ticker"
    t.integer  "stock_market_id"
    t.integer  "stock_type_id"
    t.text     "about"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["stock_market_id"], name: "index_stocks_on_stock_market_id", using: :btree
    t.index ["stock_type_id"], name: "index_stocks_on_stock_type_id", using: :btree
  end

  create_table "trials", force: :cascade do |t|
    t.integer  "drug_id"
    t.text     "gov_url"
    t.integer  "company_id"
    t.text     "about"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_trials_on_company_id", using: :btree
    t.index ["drug_id"], name: "index_trials_on_drug_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "first_name",             default: "", null: false
    t.string   "last_name",              default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "companies", "stocks"
  add_foreign_key "drug_diseases", "diseases"
  add_foreign_key "drug_diseases", "drugs"
  add_foreign_key "phases", "statuses"
  add_foreign_key "phases", "trials"
  add_foreign_key "stocks", "stock_markets"
  add_foreign_key "stocks", "stock_types"
  add_foreign_key "trials", "companies"
  add_foreign_key "trials", "drugs"
end
