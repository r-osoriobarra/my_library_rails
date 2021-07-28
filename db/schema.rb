ActiveRecord::Schema.define(version: 2021_07_28_223427) do

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.string "status"
    t.datetime "loan_date"
    t.datetime "return_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
