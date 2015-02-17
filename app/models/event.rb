class Event < ActiveRecord::Base
	validates :litle, :description, :datestart, :dateend, :hourstart, :hourend, :price, :wherebuy, presence: true
	validates  :litle, length: {in: 3..20}
	validates :description, length:  {in: 15..140}
	validates :dateend,:datestart, :hourend, :hourstar, :price, numericality: { only_integer: true }

has_and_belongs_to_many :user


end
