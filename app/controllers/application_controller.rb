class ApplicationController < ActionController::Base
  
  class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

	  protected

	 def configure_permitted_parameters
	  devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:name, :sexo, :tel, :bibliography, :locationborn, :location, :website, :borndate, :avatar_file_name,:background_file_name ) }
	end
	end

  protect_from_forgery with: :exception
end
