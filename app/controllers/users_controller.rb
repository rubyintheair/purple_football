class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
  end

  def create 
    @user = User.new(users_params)
    if @user.save 
      redirect_to root_path
    else 
      redirect_to new_user_path
    end 
  end 

  def users_params
    params.require(:user).permit(:first_name, :last_name)
  end 
end
