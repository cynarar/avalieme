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

ActiveRecord::Schema.define(version: 20180829105932) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string   "email",              default: "", null: false
    t.string   "encrypted_password", default: "", null: false
    t.integer  "sign_in_count",      default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "failed_attempts",    default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["unlock_token"], name: "index_admins_on_unlock_token", unique: true, using: :btree

  create_table "brands", force: :cascade do |t|
    t.string   "name",                            null: false
    t.string   "slug",                            null: false
    t.string   "active",            default: "t"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  add_index "brands", ["slug"], name: "index_brands_on_slug", unique: true, using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "name",                       null: false
    t.string   "slug",                       null: false
    t.boolean  "enabled",    default: false
    t.integer  "parent_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "categories", ["slug"], name: "index_categories_on_slug", unique: true, using: :btree

  create_table "cities", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "uf",         null: false
    t.string   "slug",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "cities", ["slug"], name: "index_cities_on_slug", unique: true, using: :btree

  create_table "details", force: :cascade do |t|
    t.integer  "product_id",  null: false
    t.string   "so"
    t.string   "ram"
    t.string   "rom"
    t.string   "height"
    t.string   "colors"
    t.string   "screen"
    t.string   "size"
    t.string   "conectivity"
    t.string   "camera"
    t.string   "processor"
    t.string   "batery"
    t.string   "sensors"
    t.string   "content"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "details", ["product_id"], name: "index_details_on_product_id", using: :btree

  create_table "galleries", force: :cascade do |t|
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "galleries", ["product_id"], name: "index_galleries_on_product_id", using: :btree

  create_table "photos", force: :cascade do |t|
    t.integer  "gallery_id"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "title"
    t.string   "description"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "photos", ["gallery_id"], name: "index_photos_on_gallery_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "name",                      null: false
    t.string   "slug",                      null: false
    t.string   "model"
    t.string   "description",               null: false
    t.integer  "brand_id",                  null: false
    t.integer  "category_id",               null: false
    t.string   "active",      default: "t"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "products", ["brand_id"], name: "index_products_on_brand_id", using: :btree
  add_index "products", ["category_id"], name: "index_products_on_category_id", using: :btree
  add_index "products", ["slug"], name: "index_products_on_slug", unique: true, using: :btree

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.string   "cpf"
    t.integer  "city_id"
    t.string   "address"
    t.boolean  "showaddress",            default: false, null: false
    t.string   "phone"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "slug"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["slug"], name: "index_users_on_slug", unique: true, using: :btree

  add_foreign_key "details", "products"
  add_foreign_key "galleries", "products"
  add_foreign_key "photos", "galleries"
  add_foreign_key "products", "brands"
  add_foreign_key "products", "categories"
end
