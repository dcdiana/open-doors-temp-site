class CreateArchiveConfigs < ActiveRecord::Migration[5.0]
  def change
    ActiveRecord::Base.establish_connection(Rails.Application::CONFIG_DB_CONF)

    create_table :archive_configs, id: :integer, default: 0, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
      t.string "key", limit: 45, null: false
      t.string "name", limit: 255, default: null
      t.string "fandom", limit: 255, default: null
      t.string "stories_note", limit: 65535
      t.string "bookmarks_note", limit: 65535
      t.boolean "send_email", default: false, null: false
      t.boolean "post_preview", default: false, null: false
      t.integer "items_per_page", default: 30, null: false
      t.string "archivist", limit: 255, default: "testy", null: false
      t.string "collection_name", limit: 255, default: null
      t.integer "imported", default: 0
      t.integer "notImported", default: 0
      t.index ["id"], name: "id_UNIQUE", unique: true, using: :btree
      t.index ["key"], name: "key_UNIQUE", unique: true, using: :btree
    end
  end
end
