class RegistrationsController < Devise::RegistrationsController
  def index
    @users = User.all
  end

  def edit
    @user = current_user
  end

  def update
  authorize @user, :update?
    if @user.update_attributes(account_update_params)
      redirect_to @user
    else
      render :edit
    end
  end



  private

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password)
  end
end