class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.string :slug, null: false
      t.string :model
      t.string :description, null: false
      t.references :brand, index: true, foreign_key: true, null: false
      t.references :category, index: true, foreign_key: true, null: false
      t.string :active, default: true

      t.timestamps null: false
    end
    
    add_index :products, :slug, unique: true
  end
end
