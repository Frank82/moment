class UsersController < ApplicationController
  # before_action :set_user, only: [:show, :edit, :create]

  def index
    @users = User.all
  end

  def show
    @user = User.find(@user.user_id)

  end

  def new
    @user = User.new

  end

  def create
    @user = User.new(user_params[:id])
    @user.user = current_user
    if @user.save
      redirect_to user_path
    else
      render "new", status: :unprocessable_entity
    end
  end

  def edit
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :age, :country, :profile_image, :email, :password)
  end
end
