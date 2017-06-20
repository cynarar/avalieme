class AddDadosToUsers < ActiveRecord::Migration
  def change
    add_column :users, :address, :string
    add_column :users, :showaddress, :boolean, null: false, default: false
    add_column :users, :phone, :string
  end
end
