class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def edit
    @user = current_user
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  authorize @user
    if @user.update_attributes(account_update_params)
      redirect_to @user
    else
      render :edit
    end
  end

  # def update
  #   @user = User.find(params[:id])
  #   authorize @user
  #   if @user.save
  #     redirect_to @user, notice: "You have successfully updated your information!!"
  #   else
  #     render :new
  #   end
  # end

  private

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password)
  end

end