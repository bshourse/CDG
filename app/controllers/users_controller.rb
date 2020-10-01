class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to '/profile'
    else
      redirect_to '/signup'
    end
  end

  private def user_params
    params.require(:user).permit(:name, :email, :password)
  end

  def show
    @user = User.find(session[:user_id])
  end

  def edit
    @user = User.find(session[:user_id])
  end

  def update
    @user = User.find(session[:user_id])
    if @user.update_attributes(user_params)
      redirect_to '/profile'
    else
      render 'edit'
    end
  end
end
