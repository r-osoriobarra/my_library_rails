ActiveRecord::Schema.define(version: 2021_07_29_004020) do

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.integer "status"
    t.datetime "loan_date"
    t.datetime "return_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
