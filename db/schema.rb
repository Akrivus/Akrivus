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

ActiveRecord::Schema[7.1].define(version: 2024_04_16_182107) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "cube"
  enable_extension "plpgsql"

  create_table "experiences", force: :cascade do |t|
    t.string "category"
    t.string "title"
    t.string "name"
    t.string "location"
    t.string "content"
    t.cube "embedding"
    t.datetime "started_at"
    t.datetime "ended_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "experiences_skills", id: false, force: :cascade do |t|
    t.bigint "experience_id", null: false
    t.bigint "skill_id", null: false
    t.index ["experience_id", "skill_id"], name: "index_experiences_skills_on_experience_id_and_skill_id"
    t.index ["skill_id", "experience_id"], name: "index_experiences_skills_on_skill_id_and_experience_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "slug"
    t.string "name"
    t.string "company"
    t.string "version"
    t.boolean "hidden"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string "icon"
    t.string "name"
    t.string "content"
    t.cube "embedding"
    t.integer "proficiency"
    t.datetime "started_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stories", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.cube "embedding"
    t.bigint "experience_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["experience_id"], name: "index_stories_on_experience_id"
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

  add_foreign_key "stories", "experiences"
end
