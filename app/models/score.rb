class Score < ActiveRecord::Base
	validates :bites,:claps, :tags, :experience, :camaradas,:share,presence: true
	 validates :bites,:claps, :tags, :experience, :camaradas,:share, numericality: true

		has_one :users #un usuario sólo tiene un score
		has_one :events #un evento sólo tiene un score
		has_one :places #Un lugar sólo tiene un score
		has_one :phrases #La relación con frases se da mediante la frase que contiene un score. 
		has_one :socors #Sólo un rol pertenece a un rango de score. 
end

