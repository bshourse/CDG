class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by_email(params[:session][:email])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      session[:order_id] = @user.id
      redirect_to '/profile'
    else
      redirect_to '/login'
    end
  end

  def destroy
    session[:order_id] = nil
    session[:user_id] = nil
    redirect_to '/login'
  end

end
