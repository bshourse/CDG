class UsersController < ApplicationController

  before_action :require_user, except: [:new, :create]
  before_action :require_admin, only: [:index]

  def index
      @users = User.all
    end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      session[:order_id] = @user.id
      redirect_to '/profile'
    else
      render :new
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
    if @user.update(user_params)
      redirect_to '/profile'
    else
      render 'edit'
    end
  end
end
