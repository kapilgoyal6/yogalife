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

ActiveRecord::Schema.define(version: 20140205122759) do

  create_table "banners", force: true do |t|
    t.string   "image"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cities", force: true do |t|
    t.string   "city"
    t.integer  "country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ckeditor_assets", force: true do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable"
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type"

  create_table "cms", force: true do |t|
    t.string   "page_title"
    t.string   "meta_keywords"
    t.string   "meta_desc"
    t.text     "page_content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "countries", force: true do |t|
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: true do |t|
    t.string   "name"
    t.string   "category"
    t.string   "author"
    t.datetime "start_at"
    t.datetime "end_at"
    t.string   "image"
    t.text     "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
  end

  create_table "horoscopes", force: true do |t|
    t.string   "title"
    t.string   "subtitle"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "logo"
    t.string   "background"
    t.text     "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", force: true do |t|
    t.string   "e_mail"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "magazines", force: true do |t|
    t.string   "title"
    t.date     "issue_date"
    t.string   "cover_image"
    t.text     "desc"
    t.string   "pages"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "manage_advertisements", force: true do |t|
    t.string   "right_add_image"
    t.string   "right_url"
    t.string   "mid_add_image"
    t.string   "mid_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "manage_articles", force: true do |t|
    t.string   "title"
    t.string   "cat"
    t.string   "sub_cat"
    t.string   "image"
    t.string   "created_by"
    t.string   "rel_article"
    t.text     "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "manage_directories", force: true do |t|
    t.string   "sub_category"
    t.string   "country"
    t.string   "city"
    t.string   "business_name"
    t.string   "location"
    t.string   "phone_no"
    t.string   "email"
    t.string   "website"
    t.text     "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "manage_events", force: true do |t|
    t.string   "title"
    t.string   "category"
    t.string   "author"
    t.date     "event_date"
    t.string   "event_image"
    t.text     "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "start_at"
    t.datetime "end_at"
    t.string   "name"
  end

  create_table "manage_follow_us", force: true do |t|
    t.string   "facebook_url"
    t.string   "twitter_url"
    t.string   "google_url"
    t.string   "youtube_url"
    t.string   "ping_url"
    t.string   "vimeo_url"
    t.string   "tumbir_url"
    t.string   "rss_url"
    t.string   "flickr_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "manage_glows", force: true do |t|
    t.string   "title"
    t.string   "sub_category"
    t.string   "image"
    t.string   "created_by"
    t.text     "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "manage_greens", force: true do |t|
    t.string   "title"
    t.string   "sub_category"
    t.string   "image"
    t.string   "created_by"
    t.text     "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "manage_heals", force: true do |t|
    t.string   "title"
    t.string   "sub_category"
    t.string   "image"
    t.string   "created_by"
    t.text     "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "manage_news", force: true do |t|
    t.string   "title"
    t.string   "created_by"
    t.string   "news_image"
    t.text     "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "manage_nourishes", force: true do |t|
    t.string   "title"
    t.string   "sub_category"
    t.string   "image"
    t.string   "created_by"
    t.string   "website"
    t.text     "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "manage_poses", force: true do |t|
    t.string   "title"
    t.string   "sub_category"
    t.string   "author"
    t.string   "pose_image"
    t.text     "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "manage_retreats", force: true do |t|
    t.string   "title"
    t.string   "sub_category"
    t.string   "image"
    t.string   "created_by"
    t.text     "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "manage_teams", force: true do |t|
    t.string   "name"
    t.string   "image"
    t.string   "position"
    t.text     "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subcategories", force: true do |t|
    t.string   "cat_name"
    t.string   "sub_cat_name"
    t.text     "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subscribers", force: true do |t|
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wheretobuys", force: true do |t|
    t.string   "address"
    t.string   "country"
    t.string   "city"
    t.string   "w_days"
    t.string   "w_hours"
    t.string   "phone_no"
    t.string   "fax_no"
    t.string   "email_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
