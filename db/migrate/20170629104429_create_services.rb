class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name, null: false
      t.string :slug, null: false
      t.integer :category_id, null: false
      t.string :description
      t.integer :legth
      t.decimal :price, :precision => 8, :scale => 2
      t.boolean :up, default: false
      t.boolean :display, default: true
      
      t.timestamps null: false
    end
    
    add_index :services, :slug, unique: true
  end
  
end
