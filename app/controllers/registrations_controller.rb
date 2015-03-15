<<<<<<< HEAD
class Users::RegistrationsController < Devise::RegistrationsController
  
  def list_users
	@users =  User.all
	end 	 
    
=======
class RegistrationsController < Devise::RegistrationsController

    before_action :update_sanitized_params,
                  if: :devise_controller?
    def update_sanitized_params
      devise_parameter_sanitizer.for(:sign_up) {|o| o.permit(:name, :email, :password, :password_confirmation, :borndate, :sexo)}
    end
>>>>>>> 036601b5e726e6f4fb26fc8a973df283f834d474
end