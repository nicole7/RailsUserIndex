class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  after_action :verify_authorized, unless: :devise_controller?

  protected

  def configure_permitted_parameters
    # devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :email, :password, :password_confirmation,
    #     :current_password])
   additional_params = [:first_name, :last_name]
  devise_parameter_sanitizer.permit(:sign_up, keys: additional_params)
  devise_parameter_sanitizer.permit(:account_update, keys: additional_params)
  end

end
