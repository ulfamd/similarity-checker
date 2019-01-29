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

ActiveRecord::Schema.define(version: 2018_12_21_120753) do

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "citation_sources", force: :cascade do |t|
    t.integer "source_id"
    t.string "citation_source_writer_name"
    t.integer "citation_source_year"
    t.string "citation_source_title"
    t.string "citation_source_publisher"
    t.text "citation_source_sentence"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "citations", force: :cascade do |t|
    t.integer "citation_id"
    t.string "citation_writer__name"
    t.integer "citation_year"
    t.string "citation_title"
    t.string "citation_publisher"
    t.text "citation_sentence"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "first_documents", force: :cascade do |t|
    t.string "base_word"
    t.integer "value_word"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "second_documents", force: :cascade do |t|
    t.string "kata_dasar"
    t.integer "bobot"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "stopwords", force: :cascade do |t|
    t.string "word"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tfidf_texts", force: :cascade do |t|
    t.text "text_1"
    t.text "text_2"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_tfidf_texts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
