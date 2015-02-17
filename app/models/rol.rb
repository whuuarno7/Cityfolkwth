class Rol < ActiveRecord::Base
validates :name, :brand,presence: true

end
