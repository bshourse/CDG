class Api::V1::DaysController < ApiController
  before_action :set_day
  before_action :validate_api_key

  def show
    render json: @day, include: ['order_items']
  end

  def set_day
    @day = Day.find(params[:id])
  end

  def has_valid_api_key?
    request.headers['X-Api-Key'] == AUTH_DETAILS['api_key']
  end

  def validate_api_key
    return head :forbidden unless has_valid_api_key?
  end

end