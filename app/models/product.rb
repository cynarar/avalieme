class Product < ActiveRecord::Base
  belongs_to :brand
  belongs_to :category
  
  attr_accessible :name, :slug, :model, :description, :brand_id, :category_id, :picture
  
  validates_presence_of :name, :slug, :description
  
  #Adicionar picture       
    has_attached_file :picture, 
      styles: { medium: "256x256>", thumb: "128x128" }, 
      default_url: ":style/moto_g6.jpg", 
      :convert_options => {:thumb => "-quality 75 -strip" },
      :url => '/system/:access_token/foto_:style.:extension',
      :path => ':rails_root/public:url'
      
    validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/
  
  def to_param
    slug
  end
end
