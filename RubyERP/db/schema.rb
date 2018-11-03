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

ActiveRecord::Schema.define(version: 20140930130213) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: true do |t|
    t.string   "iban"
    t.string   "description"
    t.string   "account_holder"
    t.integer  "client_id"
    t.integer  "company_id"
    t.boolean  "default"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "accounts", ["client_id"], name: "index_accounts_on_client_id", using: :btree

  create_table "addresses", force: true do |t|
    t.string   "name"
    t.string   "direction"
    t.string   "postal_code"
    t.string   "city"
    t.string   "province"
    t.string   "country"
    t.string   "post_office"
    t.integer  "type"
    t.text     "description"
    t.integer  "client_id"
    t.boolean  "default_client"
    t.integer  "company_id"
    t.boolean  "default_company"
    t.integer  "contact_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "addresses", ["client_id"], name: "index_addresses_on_client_id", using: :btree
  add_index "addresses", ["company_id"], name: "index_addresses_on_company_id", using: :btree
  add_index "addresses", ["contact_id"], name: "index_addresses_on_contact_id", using: :btree

  create_table "clients", force: true do |t|
    t.integer  "company_id"
    t.string   "name"
    t.string   "alias"
    t.string   "cif"
    t.string   "telephone"
    t.string   "other_telefono"
    t.string   "mobile"
    t.string   "fax"
    t.string   "mail"
    t.string   "web"
    t.text     "observations"
    t.string   "incoterm"
    t.string   "incoterm_location"
    t.integer  "method_of_payment"
    t.integer  "payment_period"
    t.integer  "documents_language"
    t.integer  "client_type"
    t.integer  "currency"
    t.integer  "tax_id"
    t.integer  "discount_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clients", ["company_id"], name: "index_clients_on_company_id", using: :btree

  create_table "companies", force: true do |t|
    t.string   "name"
    t.string   "administrator"
    t.string   "cif"
    t.string   "telephone"
    t.string   "other_telephone"
    t.string   "mobile"
    t.string   "fax"
    t.string   "mail"
    t.string   "web"
    t.text     "observations"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", force: true do |t|
    t.integer  "company_id"
    t.integer  "client_id"
    t.string   "name"
    t.string   "cif"
    t.string   "position"
    t.string   "department"
    t.string   "telephone"
    t.string   "other_telefono"
    t.string   "mobile"
    t.string   "mail"
    t.text     "observations"
    t.boolean  "default"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contacts", ["client_id"], name: "index_contacts_on_client_id", using: :btree

  create_table "deliverynotes", force: true do |t|
    t.integer  "company_id"
    t.integer  "client_id"
    t.integer  "address_id"
    t.string   "address"
    t.integer  "tax_id"
    t.decimal  "tax"
    t.integer  "discount_id"
    t.decimal  "discount"
    t.integer  "payment"
    t.date     "date"
    t.text     "observations"
    t.date     "expiration"
    t.decimal  "total"
    t.integer  "tariff_code"
    t.string   "gross_load"
    t.string   "net_load"
    t.string   "receiver"
    t.string   "sender"
    t.integer  "has_invoice"
    t.integer  "has_forecast"
    t.integer  "has_order"
    t.integer  "has_delivery"
    t.integer  "invoice_id"
    t.integer  "forecast_id"
    t.integer  "order_id"
    t.integer  "deliverynote_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "deliverynotes", ["client_id"], name: "index_deliverynotes_on_client_id", using: :btree
  add_index "deliverynotes", ["company_id"], name: "index_deliverynotes_on_company_id", using: :btree
  add_index "deliverynotes", ["deliverynote_id"], name: "index_deliverynotes_on_deliverynote_id", using: :btree
  add_index "deliverynotes", ["forecast_id"], name: "index_deliverynotes_on_forecast_id", using: :btree
  add_index "deliverynotes", ["invoice_id"], name: "index_deliverynotes_on_invoice_id", using: :btree
  add_index "deliverynotes", ["order_id"], name: "index_deliverynotes_on_order_id", using: :btree

  create_table "discounts", force: true do |t|
    t.decimal  "discount"
    t.string   "description"
    t.integer  "company_id"
    t.boolean  "default"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "discounts", ["company_id"], name: "index_discounts_on_company_id", using: :btree

  create_table "forecasts", force: true do |t|
    t.integer  "company_id"
    t.integer  "client_id"
    t.integer  "address_id"
    t.string   "address"
    t.integer  "tax_id"
    t.decimal  "tax"
    t.integer  "discount_id"
    t.decimal  "discount"
    t.integer  "payment"
    t.date     "date"
    t.text     "observations"
    t.date     "expiration"
    t.decimal  "total"
    t.integer  "tariff_code"
    t.string   "gross_load"
    t.string   "net_load"
    t.string   "receiver"
    t.string   "sender"
    t.integer  "has_invoice"
    t.integer  "has_forecast"
    t.integer  "has_order"
    t.integer  "has_delivery"
    t.integer  "invoice_id"
    t.integer  "forecast_id"
    t.integer  "order_id"
    t.integer  "deliverynote_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "forecasts", ["client_id"], name: "index_forecasts_on_client_id", using: :btree
  add_index "forecasts", ["company_id"], name: "index_forecasts_on_company_id", using: :btree
  add_index "forecasts", ["deliverynote_id"], name: "index_forecasts_on_deliverynote_id", using: :btree
  add_index "forecasts", ["forecast_id"], name: "index_forecasts_on_forecast_id", using: :btree
  add_index "forecasts", ["invoice_id"], name: "index_forecasts_on_invoice_id", using: :btree
  add_index "forecasts", ["order_id"], name: "index_forecasts_on_order_id", using: :btree

  create_table "images", force: true do |t|
    t.integer  "company_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "images", ["company_id"], name: "index_images_on_company_id", using: :btree

  create_table "invoices", force: true do |t|
    t.integer  "company_id"
    t.integer  "client_id"
    t.integer  "address_id"
    t.string   "address"
    t.integer  "tax_id"
    t.decimal  "tax"
    t.integer  "discount_id"
    t.decimal  "discount"
    t.integer  "payment"
    t.date     "date"
    t.text     "observations"
    t.date     "expiration"
    t.decimal  "total"
    t.integer  "tariff_code"
    t.string   "gross_load"
    t.string   "net_load"
    t.string   "receiver"
    t.string   "sender"
    t.integer  "has_invoice"
    t.integer  "has_forecast"
    t.integer  "has_order"
    t.integer  "has_delivery"
    t.integer  "invoice_id"
    t.integer  "forecast_id"
    t.integer  "order_id"
    t.integer  "deliverynote_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "invoices", ["client_id"], name: "index_invoices_on_client_id", using: :btree
  add_index "invoices", ["company_id"], name: "index_invoices_on_company_id", using: :btree
  add_index "invoices", ["deliverynote_id"], name: "index_invoices_on_deliverynote_id", using: :btree
  add_index "invoices", ["forecast_id"], name: "index_invoices_on_forecast_id", using: :btree
  add_index "invoices", ["invoice_id"], name: "index_invoices_on_invoice_id", using: :btree
  add_index "invoices", ["order_id"], name: "index_invoices_on_order_id", using: :btree

  create_table "lines", force: true do |t|
    t.integer  "company_id"
    t.integer  "client_id"
    t.integer  "invoice_id"
    t.integer  "order_id"
    t.integer  "deliverynote_id"
    t.integer  "forecast_id"
    t.string   "name"
    t.decimal  "price"
    t.decimal  "quantity"
    t.integer  "discount_id"
    t.decimal  "discount"
    t.integer  "tax_id"
    t.decimal  "tax"
    t.text     "description"
    t.decimal  "total"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lines", ["deliverynote_id"], name: "index_lines_on_deliverynote_id", using: :btree
  add_index "lines", ["forecast_id"], name: "index_lines_on_forecast_id", using: :btree
  add_index "lines", ["invoice_id"], name: "index_lines_on_invoice_id", using: :btree
  add_index "lines", ["order_id"], name: "index_lines_on_order_id", using: :btree

  create_table "orders", force: true do |t|
    t.integer  "company_id"
    t.integer  "client_id"
    t.integer  "address_id"
    t.string   "address"
    t.integer  "tax_id"
    t.decimal  "tax"
    t.integer  "discount_id"
    t.decimal  "discount"
    t.integer  "payment"
    t.date     "date"
    t.text     "observations"
    t.date     "expiration"
    t.decimal  "total"
    t.integer  "tariff_code"
    t.string   "gross_load"
    t.string   "net_load"
    t.string   "receiver"
    t.string   "sender"
    t.integer  "has_invoice"
    t.integer  "has_forecast"
    t.integer  "has_order"
    t.integer  "has_delivery"
    t.integer  "invoice_id"
    t.integer  "forecast_id"
    t.integer  "order_id"
    t.integer  "deliverynote_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orders", ["client_id"], name: "index_orders_on_client_id", using: :btree
  add_index "orders", ["company_id"], name: "index_orders_on_company_id", using: :btree
  add_index "orders", ["deliverynote_id"], name: "index_orders_on_deliverynote_id", using: :btree
  add_index "orders", ["forecast_id"], name: "index_orders_on_forecast_id", using: :btree
  add_index "orders", ["invoice_id"], name: "index_orders_on_invoice_id", using: :btree
  add_index "orders", ["order_id"], name: "index_orders_on_order_id", using: :btree

  create_table "products", force: true do |t|
    t.string   "name"
    t.string   "barcode"
    t.string   "description"
    t.decimal  "price"
    t.string   "lead_time"
    t.integer  "company_id"
    t.integer  "tax_id"
    t.integer  "discount_id"
    t.integer  "stock"
    t.boolean  "stock_active"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "products", ["company_id"], name: "index_products_on_company_id", using: :btree

  create_table "profiles", force: true do |t|
    t.integer  "company_id"
    t.integer  "user_id",    null: false
    t.string   "name"
    t.string   "telephone"
    t.string   "position"
    t.string   "department"
    t.date     "birthday"
    t.integer  "sex"
    t.integer  "role"
    t.boolean  "active"
    t.integer  "language"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "profiles", ["company_id"], name: "index_profiles_on_company_id", using: :btree
  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id", unique: true, using: :btree

  create_table "taxes", force: true do |t|
    t.decimal  "tax"
    t.string   "description"
    t.integer  "company_id"
    t.boolean  "default"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "taxes", ["company_id"], name: "index_taxes_on_company_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree

end
