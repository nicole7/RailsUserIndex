class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception
  protected
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!

  def configure_permitted_parameters
   devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :email, :password, :password_confirmation])
   devise_parameter_sanitizer.permit(:sign_in, keys: [:login, :password, :password_confirmation])
   devise_parameter_sanitizer.permit(:account_update, keys: [:username, :email, :password, :password_confirmation, :current_password])
  end
end
