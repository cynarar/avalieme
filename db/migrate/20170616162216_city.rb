class City < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name, null: false
      t.string :uf, null: false
      t.string :slug, null:false
      t.timestamps null: false
    end
  end
end
