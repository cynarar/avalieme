class City < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :nome, null: false
      t.string :uf, null: false
      t.timestamps null: false
    end
  end
end
