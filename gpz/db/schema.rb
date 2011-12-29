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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111228093343) do

  create_table "actions", :force => true do |t|
    t.integer  "web_id"
    t.integer  "lectroom_id"
    t.integer  "type_id"
    t.integer  "subject_id"
    t.date     "from"
    t.date     "to"
    t.boolean  "week"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "actions_subjects", :id => false, :force => true do |t|
    t.integer "action_id"
    t.integer "subject_id"
  end

  create_table "chairs", :force => true do |t|
    t.string   "name"
    t.string   "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "chairs_disciplines", :id => false, :force => true do |t|
    t.integer "chair_id"
    t.integer "discipline_id"
  end

  create_table "chairs_groups", :id => false, :force => true do |t|
    t.integer "chair_id"
    t.integer "group_id"
  end

  create_table "chairs_teachers", :id => false, :force => true do |t|
    t.integer "chair_id"
    t.integer "teacher_id"
  end

  create_table "disciplines", :force => true do |t|
    t.string   "name"
    t.string   "reductname"
    t.integer  "chair_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "faculties", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", :force => true do |t|
    t.string   "number"
    t.integer  "chair_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lectrooms", :force => true do |t|
    t.string   "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subjects", :force => true do |t|
    t.integer  "chair_id"
    t.integer  "discipline_id"
    t.integer  "teacher_id"
    t.integer  "group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teachers", :force => true do |t|
    t.string   "name"
    t.string   "pathname"
    t.string   "surname"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "webs", :force => true do |t|
    t.datetime "begintime"
    t.integer  "lenght"
    t.integer  "pair"
    t.integer  "day"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
