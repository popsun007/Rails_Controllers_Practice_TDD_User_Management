class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def new

  end

  def create
    # User.create(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password: params[:password])
    User.create(user_params)
    redirect_to "/users"
  end
private 
  def user_params
   params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end
