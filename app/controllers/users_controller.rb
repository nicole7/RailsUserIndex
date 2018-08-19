class UsersController < ApplicationController
  def index
    @users = User.all
    authorize @users
    render :index
  end

  def show
    @user = current_user
    authorize @user
    render :show
  end

  def edit
    authorize @user
  end

  def update
    @user = current_user
    authorize @user
    if @user.update(account_update_params)
      redirect_to root_path
    else
      render "edit"
    end
  end

  private
  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :fav_color, :email, :password, :password_confirmation)
  end
end