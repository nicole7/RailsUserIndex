class UsersController < ApplicationController
  def index
    @users = User.all
    @user = current_user
  end

  def update
  authorize @user
  if @user.update(user_params)
    redirect_to @user
  else
    render :edit
  end
end

end