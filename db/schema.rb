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

ActiveRecord::Schema.define(version: 2019_08_17_154826) do

  create_table "date_meal_records", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "day_of_week"
    t.string "time_of_day"
    t.float "amount"
  end

  create_table "dish_ingredient_calendars", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.float "amount"
    t.integer "dish_id"
    t.integer "date_meal_record_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "ingredient_detail"
  end

  create_table "dish_ingredient_details", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.float "amount"
    t.bigint "dish_id"
    t.bigint "ingredient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dish_id"], name: "index_dish_ingredient_details_on_dish_id"
    t.index ["ingredient_id"], name: "index_dish_ingredient_details_on_ingredient_id"
  end

  create_table "dishes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.integer "ration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredient_nutrient_details", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.float "amount"
    t.bigint "nutrient_id"
    t.bigint "ingredient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ingredient_id"], name: "index_ingredient_nutrient_details_on_ingredient_id"
    t.index ["nutrient_id"], name: "index_ingredient_nutrient_details_on_nutrient_id"
  end

  create_table "ingredient_units", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.float "amount"
    t.bigint "ingredient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ingredient_id"], name: "index_ingredient_units_on_ingredient_id"
  end

  create_table "ingredients", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.float "non_edible_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "in_suggest"
  end

  create_table "nutrients", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "unit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.integer "weight"
    t.string "animal_based_food"
    t.string "working_level"
    t.string "gender"
    t.integer "month_of_pregnancy"
    t.integer "month_of_breastfeeding"
    t.boolean "is_aids"
    t.boolean "is_hiv"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
