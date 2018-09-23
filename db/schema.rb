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

ActiveRecord::Schema.define(version: 0) do

  create_table "agencies", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "agency_name", limit: 100
  end

  create_table "agency_to_locations", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "agency_id", null: false
    t.integer "location_id", null: false
    t.index ["agency_id"], name: "fk_AgenciesToLocations_to_Agency"
    t.index ["location_id"], name: "fk_AgenciesToLocations_to_location"
  end

  create_table "apartment_complexes", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "tenant_id", null: false
    t.integer "location_id", null: false
    t.string "apartment_complex_name", limit: 50
    t.integer "number_of_apartments"
    t.index ["location_id"], name: "fk_Apartment_Complexes_to_Location"
    t.index ["tenant_id"], name: "fk_Apartment_Complexes_to_Tenants"
  end

  create_table "locations", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "state", limit: 2
    t.integer "zip_code"
    t.string "city", limit: 100
  end

  create_table "renters", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "apartment_id", null: false
    t.integer "user_id", null: false
    t.string "first_name", limit: 50
    t.string "last_name", limit: 50
    t.datetime "contract_start"
    t.datetime "contract_end"
    t.index ["apartment_id"], name: "fk_Renter_to_Apartment"
    t.index ["user_id"], name: "fk_Renter_to_user"
  end

  create_table "reviewers", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "user_id", null: false
    t.index ["user_id"], name: "fk_Reviewers_to_User"
  end

  create_table "reviews", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "reviewer_id", null: false
    t.integer "user_id", null: false
    t.decimal "rating", precision: 2, scale: 1
    t.string "description", limit: 500
    t.datetime "review_date"
    t.index ["reviewer_id"], name: "fk_Reviews_to_Reviewer"
    t.index ["user_id"], name: "fk_Reviews_to_User"
  end

  create_table "apartments", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "apartment_complex_id", null: false
    t.integer "apartment_number"
    t.integer "number_of_rooms"
    t.integer "square_footage"
    t.integer "number_of_bedrooms"
    t.integer "number_of_bathrooms"
    t.decimal "price", precision: 10, scale: 2
    t.index ["apartment_complex_id"], name: "fk_Apartments_to_Apartment_Complex"
  end

  create_table "tenants", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "user_id", null: false
    t.string "first_name", limit: 50
    t.string "last_name", limit: 50
    t.index ["user_id"], name: "fk_Tenant_to_User"
  end

   create_table "users", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "agency_to_locations", "agencies",  name: "fk_AgenciesToLocations_to_Agency"
  add_foreign_key "agency_to_locations", "locations", name: "fk_AgenciesToLocations_to_location"
  add_foreign_key "apartment_complexes", "locations", name: "fk_Apartment_Complexes_to_Location"
  add_foreign_key "apartment_complexes", "tenants", name: "fk_Apartment_Complexes_to_Tenants"
  add_foreign_key "renters", "apartments", name: "fk_Renter_to_Apartment"
  add_foreign_key "renters", "users", name: "fk_Renter_to_user"
  add_foreign_key "reviewers", "users", name: "fk_Reviewers_to_User"
  add_foreign_key "reviews", "reviewers", name: "fk_Reviews_to_Reviewer"
  add_foreign_key "reviews", "users", name: "fk_Reviews_to_User"
  add_foreign_key "apartments", "apartment_complexes", name: "fk_Apartments_to_Apartment_Complex"
  add_foreign_key "tenants", "users", name: "fk_Tenant_to_User"
end
