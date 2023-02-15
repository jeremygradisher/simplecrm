# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2016_07_20_153911) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "project_cicons", id: :serial, force: :cascade do |t|
    t.integer "project_id"
    t.string "cicon"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "project_contracts", id: :serial, force: :cascade do |t|
    t.integer "project_id"
    t.string "contract"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "project_invoices", id: :serial, force: :cascade do |t|
    t.integer "project_id"
    t.string "invoice"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "project_pdocuments", id: :serial, force: :cascade do |t|
    t.integer "project_id"
    t.string "pdocument"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "project_picons", id: :serial, force: :cascade do |t|
    t.integer "project_id"
    t.string "picon"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "project_prevcontracts", id: :serial, force: :cascade do |t|
    t.integer "project_id"
    t.string "prevcontract"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "project_proposals", id: :serial, force: :cascade do |t|
    t.integer "project_id"
    t.string "proposal"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "project_pw9s", id: :serial, force: :cascade do |t|
    t.integer "project_id"
    t.string "pw9"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "projects", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "project_status"
    t.string "primary_street"
    t.string "primary_city"
    t.string "primary_state"
    t.string "primary_zip"
    t.string "client_name"
    t.string "client_contact"
    t.string "client_meeting"
    t.string "project_start"
    t.string "project_finish"
    t.string "billing_street"
    t.string "billing_city"
    t.string "billing_state"
    t.string "billing_zip"
    t.text "brief_description"
    t.text "staffing_notes"
    t.string "deal_terms"
    t.string "rate"
    t.text "additional_terms"
    t.text "doc_links"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "phases"
    t.string "grand_total"
    t.string "nbd"
    t.string "email"
    t.string "telephone"
    t.text "correspondence_notes"
  end

  create_table "projects_services", id: false, force: :cascade do |t|
    t.integer "project_id", null: false
    t.integer "service_id", null: false
    t.index ["project_id", "service_id"], name: "index_projects_services_on_project_id_and_service_id"
  end

  create_table "services", id: :serial, force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "users", id: :serial, force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: nil
    t.datetime "remember_created_at", precision: nil
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at", precision: nil
    t.datetime "last_sign_in_at", precision: nil
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at", precision: nil
    t.datetime "confirmation_sent_at", precision: nil
    t.string "unconfirmed_email"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
