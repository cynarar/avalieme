class Gallery < ActiveRecord::Base
  belongs_to :product
  has_many :photos, :dependent => :destroy
  
  attr_accessible :product_id
  
  validates_presence_of :product_id
  
end
