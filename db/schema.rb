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

ActiveRecord::Schema.define(version: 20140221054214) do

  create_table "customers", force: true do |t|
    t.string   "name"
    t.integer  "mobileno"
    t.string   "email"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "customers", ["mobileno"], name: "index_customers_on_mobileno"

  create_table "movies", force: true do |t|
    t.string   "moviename"
    t.string   "language"
    t.integer  "yor"
    t.string   "typeofmovie"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "status"
  end

  create_table "rentals", force: true do |t|
    t.integer  "mobileno"
    t.string   "moviename"
    t.integer  "customer_id"
    t.integer  "movie_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rentals", ["customer_id"], name: "index_rentals_on_customer_id"
  add_index "rentals", ["movie_id"], name: "index_rentals_on_movie_id"

  create_table "rents", force: true do |t|
    t.integer  "mobileno"
    t.string   "moviename"
    t.integer  "customer_id"
    t.integer  "movie_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rents", ["customer_id"], name: "index_rents_on_customer_id"
  add_index "rents", ["movie_id"], name: "index_rents_on_movie_id"

end
