class Score < ActiveRecord::Base
	validates :bites,:claps, :tags, :experience, :camaradas,:share,presence: true
	 validates :bites,:claps, :tags, :experience, :camaradas,:share, numericality: true

end
