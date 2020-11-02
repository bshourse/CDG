class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by_email(params[:session][:email])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      session[:order_id] = @user.id
      redirect_to '/profile', success: "You have signed in!"
    else
      redirect_to user_login_path, danger: "Invalid email or password"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end

end
