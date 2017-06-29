class AddSlugToUser < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.string :slug
    end
  end
  
end
