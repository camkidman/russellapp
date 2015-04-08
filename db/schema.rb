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

ActiveRecord::Schema.define(version: 20150405191554) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "offers", force: true do |t|
    t.string   "name"
    t.string   "website"
    t.string   "whos_offer"
    t.string   "fulfillment"
    t.string   "trial"
    t.string   "customer_support_phone"
    t.string   "customer_support_email"
    t.string   "fax_number"
    t.string   "hours_of_operation"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "legal_name"
  end

  add_index "offers", ["user_id"], name: "index_offers_on_user_id", using: :btree

  create_table "processors", force: true do |t|
    t.string   "name"
    t.date     "date_submitted"
    t.boolean  "approved"
    t.date     "date_approved"
    t.string   "current_rates"
    t.string   "bank_1"
    t.string   "bank_2"
    t.string   "monthly_amount"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "offer_id"
  end

  add_index "processors", ["offer_id"], name: "index_processors_on_offer_id", using: :btree

  create_table "reference_contacts", force: true do |t|
    t.string   "name"
    t.string   "known_from"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "reference_contacts", ["user_id"], name: "index_reference_contacts_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "entity_name"
    t.string   "ein"
    t.date     "date_established"
    t.integer  "percent_of_ownership"
    t.string   "phone"
    t.string   "email"
    t.date     "birthdate"
    t.string   "address"
    t.string   "address_2"
    t.string   "state"
    t.string   "zip"
    t.string   "city"
    t.integer  "time_at_current_residence_years"
    t.integer  "time_at_current_residence_months"
    t.string   "drivers_license_number"
    t.date     "drivers_license_expiration"
    t.string   "drivers_license_state"
    t.string   "ssn"
    t.string   "bank_account_number"
    t.string   "bank_routing_number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "title"
  end

end
