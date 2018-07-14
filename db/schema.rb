ActiveRecord::Schema.define(version: 2018_07_14_124204) do

  enable_extension "pgcrypto"
  enable_extension "plpgsql"

  create_table "chat_messages", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
