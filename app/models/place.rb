class Place < ActiveRecord::Base
	validates :name,:adress, :latitude, :longitude, :description,presence: true
	validates :user_name, :password, confirmation: true
	validates :bibliograpy, length: {in: 30..140}
	validates :password, :user_name,length: { in: 6..20 }
    validates :registration_number, length: { is: 6 }
    validates :tel, numericality: true
  
end
