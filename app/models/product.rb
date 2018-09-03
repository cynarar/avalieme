class Product < ActiveRecord::Base
  belongs_to :brand
  belongs_to :category
  has_one :detail, :dependent => :destroy
  has_one :gallery, :dependent => :destroy
  
  attr_accessible :name, :slug, :model, :description, :brand_id, :category_id
  
  validates_presence_of :name, :slug, :description
  
  def to_param
    slug
  end
  
  def has_detail?
    self.detail.present?
  end
  
  def has_picture?
    self.gallery.present?
  end
  
  def picture
    self.gallery.photos.first
  end
end