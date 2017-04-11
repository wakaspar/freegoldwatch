class PinsController < ApplicationController
  include HTTParty

  def index
    get_pins
    # if params[:serach]
    #   @pin_db = res_two['machines'].name_like("%#{params[:serach]}%")
    # end
  end

  private

  def get_pins
    res = HTTParty.get('http://pinballmap.com/api/v1/locations/2405/machine_details.json', format: :json)
    @floor_pins = res['machines']

    res_two = HTTParty.get('http://pinballmap.com/api/v1/machines.json', format: :json)
    @pin_db = res_two['machines']
  end

end
