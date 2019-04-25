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

ActiveRecord::Schema.define(version: 20160720153911) do

  create_table "project_cicons", force: :cascade do |t|
    t.integer  "project_id"
    t.string   "cicon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_contracts", force: :cascade do |t|
    t.integer  "project_id"
    t.string   "contract"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_invoices", force: :cascade do |t|
    t.integer  "project_id"
    t.string   "invoice"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_pdocuments", force: :cascade do |t|
    t.integer  "project_id"
    t.string   "pdocument"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_picons", force: :cascade do |t|
    t.integer  "project_id"
    t.string   "picon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_prevcontracts", force: :cascade do |t|
    t.integer  "project_id"
    t.string   "prevcontract"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "project_proposals", force: :cascade do |t|
    t.integer  "project_id"
    t.string   "proposal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_pw9s", force: :cascade do |t|
    t.integer  "project_id"
    t.string   "pw9"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.string   "project_status"
    t.string   "primary_street"
    t.string   "primary_city"
    t.string   "primary_state"
    t.string   "primary_zip"
    t.string   "client_name"
    t.string   "client_contact"
    t.string   "client_meeting"
    t.string   "project_start"
    t.string   "project_finish"
    t.string   "billing_street"
    t.string   "billing_city"
    t.string   "billing_state"
    t.string   "billing_zip"
    t.text     "brief_description"
    t.text     "staffing_notes"
    t.string   "deal_terms"
    t.string   "rate"
    t.text     "additional_terms"
    t.text     "doc_links"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "phases"
    t.string   "grand_total"
    t.string   "nbd"
    t.string   "email"
    t.string   "telephone"
    t.text     "correspondence_notes"
  end

  create_table "projects_services", id: false, force: :cascade do |t|
    t.integer "project_id", null: false
    t.integer "service_id", null: false
    t.index ["project_id", "service_id"], name: "index_projects_services_on_project_id_and_service_id"
  end

  create_table "services", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
