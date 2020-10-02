class DaysController < ApplicationController

  before_action :require_user

  def index
    @days = Day.all
  end

end
