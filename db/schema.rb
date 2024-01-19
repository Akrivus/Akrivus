# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_01_19_014502) do
  create_schema "heroku_ext"

  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_stat_statements"
  enable_extension "plpgsql"

  create_table "positions", force: :cascade do |t|
    t.string "title"
    t.string "name"
    t.string "content"
    t.string "image_key"
    t.datetime "started_at"
    t.datetime "ended_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.string "content"
    t.string "image_key"
    t.string "icon"
    t.string "color"
    t.string "call_to_action"
    t.string "call_to_action_url"
    t.datetime "started_at"
    t.datetime "ended_at"
    t.bigint "position_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["position_id"], name: "index_projects_on_position_id"
  end

  create_table "projects_skills", id: false, force: :cascade do |t|
    t.bigint "project_id", null: false
    t.bigint "skill_id", null: false
    t.index ["project_id", "skill_id"], name: "index_projects_skills_on_project_id_and_skill_id"
    t.index ["skill_id", "project_id"], name: "index_projects_skills_on_skill_id_and_project_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.string "icon"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "first_name"
    t.string "last_name"
    t.string "remember_token"
    t.datetime "remember_token_expires_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "projects", "positions"
end
