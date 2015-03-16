class Event < ActiveRecord::Base
	#validates :title, :description, :datestart, :dateend, :hourstart, :hourend, :price, :wherebuy, presence: true
	#validates :title, length: {in: 3..20}
	#validates :description, length:  {in: 15..140}
	#validates :dateend,:datestart, :hourend, :hourstart, :price, numericality: { only_integer: true }

		has_one :phrases #Un evento sólo tiene una frase 
		has_one :scores #Un evento solo tiene un score
		has_and_belongs_to_many :users #un evento tiene muchos usuarios
		has_and_belongs_to_many :sponsors #un evento tiene varios patrocinadores
		has_and_belongs_to_many :category #un evento puede tener varias categorias
		has_many :comments, :as => :shuots #un evento tiene muchos comentarios
		has_and_belongs_to_many :places #un evento tiene sólo un lugar

     has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
     validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

      has_attached_file :background, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
      validates_attachment_content_type :background, :content_type => /\Aimage\/.*\Z/

end
