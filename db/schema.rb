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

ActiveRecord::Schema.define(version: 20130923014948) do

  create_table "attendees", force: true do |t|
    t.string   "name"
    t.string   "website"
    t.string   "github"
    t.string   "twitter"
    t.string   "linkedin"
    t.string   "interests"
    t.string   "specialty"
    t.text     "expectation"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
  end

  add_index "attendees", ["email"], name: "index_attendees_on_email", unique: true, using: :btree

  create_table "comments", force: true do |t|
    t.string   "commenter_name"
    t.string   "commenter_website"
    t.string   "comment_body"
    t.integer  "title_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["title_id"], name: "index_comments_on_title_id", using: :btree

  create_table "hackers", force: true do |t|
    t.string   "name"
    t.string   "github"
    t.string   "twitter"
    t.string   "email"
    t.string   "language"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "hackers", ["email"], name: "index_hackers_on_email", unique: true, using: :btree

  create_table "startups", force: true do |t|
    t.string   "name"
    t.string   "ceo"
    t.string   "location"
    t.integer  "founding_year"
    t.string   "website"
    t.string   "twitter"
    t.string   "email"
    t.string   "github"
    t.string   "product"
    t.string   "product_tagline"
    t.text     "product_description"
    t.text     "technologies"
    t.string   "logo"
    t.text     "ceo_bio"
    t.string   "facebook"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password"
    t.string   "salt"
  end

  create_table "thank_you_lists", force: true do |t|
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "titles", force: true do |t|
    t.string   "title"
    t.string   "submitter_name"
    t.string   "submitter_email"
    t.text     "relevance"
    t.integer  "difficulty_level"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
