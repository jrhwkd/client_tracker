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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 2021_06_11_175251) do
=======
ActiveRecord::Schema.define(version: 2021_06_30_162412) do
>>>>>>> rollback

  create_table "client_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone"
<<<<<<< HEAD
    t.string "company"
    t.integer "clienttype_id", null: false
    t.integer "manager_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["clienttype_id"], name: "index_clients_on_clienttype_id"
    t.index ["manager_id"], name: "index_clients_on_manager_id"
=======
    t.string "address"
    t.string "company"
    t.integer "sector_id", null: false
    t.integer "manager_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["manager_id"], name: "index_clients_on_manager_id"
    t.index ["sector_id"], name: "index_clients_on_sector_id"
>>>>>>> rollback
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.integer "company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_groups_on_company_id"
  end

  create_table "managers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.integer "group_id", null: false
    t.integer "company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_managers_on_company_id"
    t.index ["group_id"], name: "index_managers_on_group_id"
  end

<<<<<<< HEAD
  add_foreign_key "clients", "clienttypes"
  add_foreign_key "clients", "managers"
=======
  create_table "sectors", force: :cascade do |t|
    t.string "client_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "clients", "managers"
  add_foreign_key "clients", "sectors"
>>>>>>> rollback
  add_foreign_key "groups", "companies"
  add_foreign_key "managers", "companies"
  add_foreign_key "managers", "groups"
end
