class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def new

  end

  def create
    # User.create(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password: params[:password])
    user = User.new(user_params)
    if user.valid?
      user.save
      redirect_to "/users"
    else
      @errors = user.errors.full_messages
      render "/users/new"
    end
  end
private 
  def user_params
   params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end
