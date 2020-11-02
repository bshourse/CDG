class ApplicationController < ActionController::Base

  include ApplicationHelper

  add_flash_types :danger, :success

  def current_user # Метод current_user определяет, вошел ли пользователь в систему или вышел из нее. Это делается путем проверки наличия пользователя в базе данных с данным идентификатором сеанса. Если есть, это означает, что пользователь вошел в систему, и @current_user сохранит этого пользователя; в противном случае пользователь вышел из системы, и @current_user будет иметь значение nil.
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def require_user # Метод require_user использует метод current_user для перенаправления вышедших из системы пользователей на страницу входа.
    redirect_to '/login' unless current_user
  end

  def require_admin
    redirect_to '/profile' unless current_user.admin?
  end

end
