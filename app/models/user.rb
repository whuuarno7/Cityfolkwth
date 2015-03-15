class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	
	has_one :rols
	has_many :phrases, through: :score #un usuario tiene varias frases, lo cual cada una pertenece un score. 
	has_and_belongs_to_many :events #muchos usuarios tienen varios eventos agendados
	has_many :comments, :as => :shuots #RELACIÓN POLIMORFICA COMMENTS, gritos es la casilla que crea la relación para vincularla con comments

<<<<<<< HEAD
	# mount_uploader :imagen, PhotoUploader
=======
	#CATEGORYmount_uploader :imagen, PhotoUploader
>>>>>>> 036601b5e726e6f4fb26fc8a973df283f834d474
end
