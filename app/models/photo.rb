class Photo < ActiveRecord::Base
  belongs_to :gallery
  
  attr_accessible :gallery_id, :photo, :title, :description
  
  validates_presence_of :gallery_id, :photo, :title
  
  #Adicionar photo       
    has_attached_file :photo, 
      styles: { medium: "256x256>", thumb: "128x128" }, 
      default_url: ":style/moto_g6.jpg", 
      :convert_options => {:thumb => "-quality 75 -strip" },
      :url => '/system/:access_token/foto_:style.:extension',
      :path => ':rails_root/public:url'
      
    validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
end
