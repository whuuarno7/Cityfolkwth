class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


before_action :configure_permitted_parameters, if: :devise_controller?
def configure_permitted_parameters
    # se pueden agregar mas campos con esta sintaxis << :username << :email << :password << :password_confirmation
    devise_parameter_sanitizer.for(:sign_up) << :avatar <<:photo
  end

  #def current_user
  #	if sesssion[:user_id]
  #	@current_user = @current_user|| User.find(session[:user_id])
  # end
end
