class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    root_path
  end
  protect_from_forgery with: :exception

     before_action :configure_permitted_parameters, if: :devise_controller?

     protected

          def configure_permitted_parameters
               devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:username, :firstname, :lastname, :admin, :email, :password)}

               devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:username, :firstname, :lastname, :email, :password, :current_password)}
          end


end
