class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  #Adicionar avatar       
  has_attached_file :avatar, 
      styles: { medium: "150x150>", thumb: "36x36#" }, 
      default_url: ":style/missing.png", 
      :convert_options => {:thumb => "-quality 75 -strip" },
      :url => '/system/:access_token/foto_:style.:extension',
      :path => ':rails_root/public:url'
      
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  
  belongs_to :city
end
