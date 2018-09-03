class CreateDetails < ActiveRecord::Migration
  def change
    create_table :details do |t|
      t.references :product, index: true, foreign_key: true, null: false
      t.string :so
      t.string :ram
      t.string :rom
      t.string :height
      t.string :colors
      t.string :screen
      t.string :size
      t.string :conectivity
      t.string :camera
      t.string :processor
      t.string :batery
      t.string :sensors
      t.string :content

      t.timestamps null: false
    end
  end
end
