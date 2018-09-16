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
    t.string "agencyName", limit: 100
  end

  create_table "agency_to_locations", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "agency_id", null: false
    t.integer "location_id", null: false
    t.index ["agency_id"], name: "fk_AgenciesToLocations_to_Agency"
    t.index ["location_id"], name: "fk_AgenciesToLocations_to_location"
  end

  create_table "apartments", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "tenant_id", null: false
    t.integer "location_id", null: false
    t.string "apartmentName", limit: 50
    t.integer "numberOfRooms"
    t.index ["location_id"], name: "fk_Apartments_to_Location"
    t.index ["tenant_id"], name: "fk_Apartments_to_Tenants"
  end

  create_table "locations", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "state", limit: 2
    t.integer "zipCode"
    t.string "city", limit: 100
  end

  create_table "renters", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "room_id", null: false
    t.integer "user_id", null: false
    t.string "firstName", limit: 50
    t.string "lastName", limit: 50
    t.index ["room_id"], name: "fk_Renter_to_Room"
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
    t.index ["reviewer_id"], name: "fk_Reviews_to_Reviewer"
    t.index ["user_id"], name: "fk_Reviews_to_User"
  end

  create_table "rooms", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "apartment_id", null: false
    t.integer "roomNumber"
    t.decimal "price", precision: 10, scale: 2
    t.index ["apartment_id"], name: "fk_Rooms_to_Apartment"
  end

  create_table "tenants", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "user_id", null: false
    t.string "firstName", limit: 50
    t.string "lastName", limit: 50
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
  add_foreign_key "apartments", "locations", name: "fk_Apartments_to_Location"
  add_foreign_key "apartments", "tenants", name: "fk_Apartments_to_Tenants"
  add_foreign_key "renters", "rooms", name: "fk_Renter_to_Room"
  add_foreign_key "renters", "users", name: "fk_Renter_to_user"
  add_foreign_key "reviewers", "users", name: "fk_Reviewers_to_User"
  add_foreign_key "reviews", "reviewers", name: "fk_Reviews_to_Reviewer"
  add_foreign_key "reviews", "users", name: "fk_Reviews_to_User"
  add_foreign_key "rooms", "apartments", name: "fk_Rooms_to_Apartment"
  add_foreign_key "tenants", "users", name: "fk_Tenant_to_User"
end
