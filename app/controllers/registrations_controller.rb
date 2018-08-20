class RegistrationsController < Devise::RegistrationsController

  private
  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :fav_color, :email, :password, :password_confirmation, :current_password)
  end
end