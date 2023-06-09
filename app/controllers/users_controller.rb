class UsersController < ApplicationController

  def top
    @users = User.new
  end

  def index
    @users = User.all
  end

  def create
    @user = User.new(user_params)
    @user.save
    redirect_to user_path(@user.id)
  end

  def show
    @user = User.find(params[:id])
    @follow = Follow.new
  end

  private
  def user_params
    params.require(:user).permit(:name,:email)
  end
end
