class Place < ActiveRecord::Base
	#validates :name,:adress, :latitude, :longitude, :description,presence: true
	#validates :user_name, :password, confirmation: true
	#validates :bibliograpy, length: {in: 30..140}
	#validates :password, :user_name,length: { in: 6..20 }
    #validates :registration_number, length: { is: 6 }
    #validates :tel, numericality: true
    
		has_and_belongs_to_many :events #Un lugar puede tener varios eventos	
		has_one :scores  #Un lugar puede tener un solo score
		has_and_belongs_to_many :categorys #un lugar puede tener varias categorias

	#mount_uploader :imagen, FotoUploader
  
end
