class Category < ActiveRecord::Base
  has_many :subcategories, :class_name => "Category", :foreign_key => :parent_id, :dependent => :destroy
  has_one :parent, :class_name => "Category", :primary_key => :parent_id, :foreign_key => :id

  attr_accessible :name, :slug, :enabled, :parent_id

  validates_presence_of :name, :slug

  def to_param
    slug
  end
    
    def parent_name
      # it may not have a parent
      parent.try(:name)
    end
    
    def has_parent?
      parent.present?
    end
    
    def has_children?
      children.exists?
    end
end
