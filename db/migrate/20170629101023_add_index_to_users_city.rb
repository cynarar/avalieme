class AddIndexToUsersCity < ActiveRecord::Migration
  def change
    add_index "users", ["slug"], name: "index_users_on_slug", unique: true, using: :btree
    add_index "cities", ["slug"], name: "index_cities_on_slug", unique: true, using: :btree
  end
end
