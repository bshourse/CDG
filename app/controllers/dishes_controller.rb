class DishesController < ApplicationController

  def new
    @dish = Dish.new
    @dish.courses.build
    @day = Day.find(params[:id])
  end

  def create
    @dish = Dish.new(dish_params)
    if @dish.save
      redirect_to '/dashboard'
    else
      @dish.courses.build
      @day = Day.find(params[:id])
      render :new
    end
  end

  private def dish_params
    params.require(:dish).permit(:id, :name, :description, :price, :course_name, courses_attributes: [:day_id])
  end

end
