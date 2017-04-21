class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  # Permits the corresponding parameters
  def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up) do |user_params|
      user_params.permit(:role, :name, :email, :password, :password_confirmation)
    end
  end

end
