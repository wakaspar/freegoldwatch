class PinsController < ApplicationController
  include HTTParty

  def index
    get_pins
  end

  def search
    query = params[:q]
    @pins = Pin.page(params[:page]).search query
  end

  private

  def get_pins
    response = HTTParty.get('http://pinballmap.com/api/v1/locations/2405/machine_details.json', format: :json)
    @pins = response['machines']
  end

end
