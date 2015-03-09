class Users::RegistrationsController < Devise::RegistrationsController
  
  def list_users
	@users =  User.all
	end 	 
    
end