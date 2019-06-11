# frozen_string_literal: true
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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 2019_05_28_085221) do

  create_table "ads", force: :cascade do |t|
    t.integer "advertiser_id"
    t.string "image"
    t.string "price"
    t.string "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
=======
ActiveRecord::Schema.define(version: 2019_06_04_073026) do
  create_table 'ads', force: :cascade do |t|
    t.integer 'advertiser_id'
    t.string 'image'
    t.string 'price'
    t.string 'text'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer 'click'
    t.integer 'imp'
    t.integer 'cv'
  end

  create_table 'conversions', force: :cascade do |t|
    t.integer 'ad_id'
    t.integer 'imp'
    t.integer 'click'
    t.integer 'cv'
    t.integer 'price'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'cvs', force: :cascade do |t|
    t.integer 'ad_id'
    t.integer 'imp'
    t.integer 'click'
    t.integer 'cv'
    t.integer 'price'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
>>>>>>> d96a9f0... execute rubocop auto-correct and beautify erb
  end
end
