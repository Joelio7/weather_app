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

ActiveRecord::Schema.define(version: 20170203001123) do

  create_table "us_cities", id: false, force: :cascade do |t|
    t.integer "id",                                                 null: false
    t.string  "name",          limit: 35
    t.string  "county",        limit: 72
    t.string  "state_code",    limit: 2
    t.string  "state",         limit: 20
    t.string  "zip_codes",     limit: 1685
    t.string  "type",          limit: 23
    t.decimal "latitude",                   precision: 8, scale: 5
    t.decimal "longitude",                  precision: 8, scale: 5
    t.string  "area_code",     limit: 3
    t.integer "population"
    t.integer "households"
    t.integer "median_income"
    t.integer "land_area",     limit: 8
    t.integer "water_area",    limit: 8
    t.string  "time_zone",     limit: 30
  end

end
