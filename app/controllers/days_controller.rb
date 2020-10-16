class DaysController < ApplicationController

  before_action :require_user

  def index
    @days = Day.all
  end

  def show
    @day = Day.find(params[:id])
    @courses = @day.courses
    @dishes = @day.dishes
    @order_item = current_order.order_items.new
    @order_items = @day.order_items
  end

end