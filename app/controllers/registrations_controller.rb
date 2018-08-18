class RegistrationsController < Devise::RegistrationsController
   before_action :configure_permitted_parameters, if: :devise_controller?
  private
  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :fav_color, :email, :password, :password_confirmation, :current_password)
  end
end