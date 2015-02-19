class Sponsor < ActiveRecord::Base
	validates :name,  :description,presence: true

		has_and_belongs_to_many :sponsors
end
