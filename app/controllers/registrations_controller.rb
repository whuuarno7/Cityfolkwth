class RegistrationsController < Devise::RegistrationsController

    before_action :update_sanitized_params,
                  if: :devise_controller?
    def update_sanitized_params
      devise_parameter_sanitizer.for(:sign_up) {|o| o.permit(:name, :email, :password, :password_confirmation, :borndate, :sexo)}
    end
end