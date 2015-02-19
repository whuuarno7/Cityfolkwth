class Category < ActiveRecord::Base
	validates :name, :description, presence: true
	validates :name,  {danza, teatro, música, deporte, arquitectura, museo, exposición, adultos, niños, biblioteca, cine, lectura, arte, academia, }

	#f.select :name, options_for_select([])

	
end
