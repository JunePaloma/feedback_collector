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

ActiveRecord::Schema.define(version: 20171108020524) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cohorts", force: :cascade do |t|
    t.string "name"
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "feedbacks", force: :cascade do |t|
    t.bigint "group_id"
    t.integer "giver_id"
    t.integer "receiver_id"
    t.integer "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "question_id"
    t.index ["giver_id"], name: "index_feedbacks_on_giver_id"
    t.index ["group_id"], name: "index_feedbacks_on_group_id"
    t.index ["question_id"], name: "index_feedbacks_on_question_id"
    t.index ["receiver_id"], name: "index_feedbacks_on_receiver_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "project_id"
    t.bigint "cohort_id"
    t.index ["cohort_id"], name: "index_groups_on_cohort_id"
    t.index ["project_id"], name: "index_groups_on_project_id"
  end

  create_table "options", force: :cascade do |t|
    t.string "title"
    t.integer "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "question_options", force: :cascade do |t|
    t.bigint "question_id"
    t.bigint "option_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["option_id"], name: "index_question_options_on_option_id"
    t.index ["question_id"], name: "index_question_options_on_question_id"
  end

  create_table "questions", force: :cascade do |t|
    t.text "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "survey_id"
    t.bigint "project_id"
    t.index ["project_id"], name: "index_questions_on_project_id"
    t.index ["survey_id"], name: "index_questions_on_survey_id"
  end

  create_table "surveys", force: :cascade do |t|
    t.string "name"
    t.bigint "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_surveys_on_project_id"
  end

  create_table "user_groups", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_user_groups_on_group_id"
    t.index ["user_id"], name: "index_user_groups_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "github_token"
    t.string "github_uid"
    t.string "name"
  end

  add_foreign_key "feedbacks", "groups"
  add_foreign_key "feedbacks", "questions"
  add_foreign_key "groups", "cohorts"
  add_foreign_key "groups", "projects"
  add_foreign_key "question_options", "options"
  add_foreign_key "question_options", "questions"
  add_foreign_key "questions", "projects"
  add_foreign_key "questions", "surveys"
  add_foreign_key "surveys", "projects"
  add_foreign_key "user_groups", "groups"
  add_foreign_key "user_groups", "users"
end
