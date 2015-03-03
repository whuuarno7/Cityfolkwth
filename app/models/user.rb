class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	
	has_one :rols
	has_many :phrases, through: :score #un usuario tiene varias frases, lo cual cada una pertenece un score. 
	has_and_belongs_to_many :events #muchos usuarios tienen varios eventos agendados
	has_many :comments, :as => :shuots #RELACIÓN POLIMORFICA COMMENTS, gritos es la casilla que crea la relación para vincularla con comments

	#CATEGORYmount_uploader :imagen, PhotoUploader

	#def self.create_with_omniauth(auth)                 user_current.
	#	self.create! do |user|
	#		User.provider = auth['provider']
	#		User.uid = auth['uid']
	#		User.name = auth ['info'] ['name']
	#		User.token = auth ['credencials'] ['token']
	#		User.secret = auth ['credentials'] ['secret']
	#		User.url_photo = auth['info']['image']
	# 		
	# end	
end
