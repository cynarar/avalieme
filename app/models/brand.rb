class Brand < ActiveRecord::Base
  has_many :products, :dependent => :destroy
  
  attr_accessible :name, :slug, :active, :logo
  
  validates_presence_of :name, :slug
  
  #Adicionar logo       
    has_attached_file :logo, 
      styles: { medium: "150x150>", thumb: "36x36#" }, 
      default_url: ":style/missing.png", 
      :convert_options => {:thumb => "-quality 75 -strip" },
      :url => '/system/:access_token/foto_:style.:extension',
      :path => ':rails_root/public:url'
      
    validates_attachment_content_type :logo, content_type: /\Aimage\/.*\z/
    
  def to_param
    slug
  end
  
end
