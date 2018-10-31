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
ActiveRecord::Schema.define(version: 2018_10_31_003114) do
=======
ActiveRecord::Schema.define(version: 2018_10_31_001958) do
>>>>>>> 425386e8c2ee89d85e12d527d313190bd4295177

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

<<<<<<< HEAD
  create_table "educations", force: :cascade do |t|
    t.datetime "start_date"
    t.datetime "end_date"
    t.string "degree"
    t.string "university_name"
    t.text "details"
=======
  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone_number"
    t.text "bio"
    t.string "linkedIn_URL"
    t.string "twitter_handle"
    t.string "personal_website_URL"
    t.string "online_resume_URL"
    t.string "github_URL"
    t.string "photo"
>>>>>>> 425386e8c2ee89d85e12d527d313190bd4295177
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
