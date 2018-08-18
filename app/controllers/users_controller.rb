class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = current_user
    @users = User.all
    render :index
  end
end