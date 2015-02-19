class Rol < ActiveRecord::Base
validates :name, :brand,presence: true

has_one :users
has_one :scores 
end
