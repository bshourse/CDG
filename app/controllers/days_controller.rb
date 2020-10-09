class DaysController < ApplicationController

  before_action :require_user

  def index
    @days = Day.all
  end

  def show
    @day = Day.find(params[:id])
    @courses = @day.courses
    @dishes = @day.dishes
  end

end
