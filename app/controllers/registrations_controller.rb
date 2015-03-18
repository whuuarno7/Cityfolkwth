class Users::RegistrationsController < Devise::RegistrationsController
 
 before_action :authenticate_user!

  def profile_user 
	@user =  User.find(params[:id])
	end 	 
    
end

 def update_resource
    devise_parameter_sanitizer.sanitize(:name, :sex, :tel, :bibliography, :locationborn, :website, :borndate, :avatar_file_name, :backgorund_file_name)
  end
   
  def account_update_params
    params.require(:user).permit(:name, :sex, :tel, :bibliography, :locationborn, :website, :borndate, :avatar_file_name, :backgorund_file_name)
  end
end