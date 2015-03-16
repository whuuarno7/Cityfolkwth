class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	
	has_one :rols
	has_many :phrases, through: :score #un usuario tiene varias frases, lo cual cada una pertenece un score. 
	has_and_belongs_to_many :events #muchos usuarios tienen varios eventos agendados
	has_many :comments, :as => :shuots #RELACIÓN POLIMORFICA COMMENTS, gritos es la casilla que crea la relación para vincularla con comments

	 has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
   validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

      has_attached_file :background, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
      validates_attachment_content_type :background, :content_type => /\Aimage\/.*\Z/
end
