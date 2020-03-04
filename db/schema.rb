# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_04_164509) do

  create_table "trails", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.integer "length"
    t.string "difficulty"
    t.string "style"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
  end

  create_table "usertrails", force: :cascade do |t|
    t.integer "user_id"
    t.integer "trail_id"
    t.index ["trail_id"], name: "index_usertrails_on_trail_id"
    t.index ["user_id"], name: "index_usertrails_on_user_id"
  end

end
