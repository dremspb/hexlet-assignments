# frozen_string_literal: true

ActiveRecord::Schema[7.0].define(version: 20_220_922_092_447) do
  create_table 'bulletins', force: :cascade do |t|
    t.string 'title'
    t.text 'body'
    t.boolean 'published'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end
end
