class Category < ActiveRecord::Base
	validates :name, :description, presence: true


	#f.select :name, options_for_select([])

	
end
