class PinsController < ApplicationController
  include HTTParty

  def index
    get_pins
  end

  # def search
  #   if params[:q].nil?
  #     @pins = []
  #   else
  #     @pins = Pin.search params[:q]
  #   end
  # end

  def search
    query = params[:q]
    # @pins = Pin.find_by name, params[:q].search query
    @articles = Pin.search(params[:q]).take
  end

  private

  def get_pins
    res = HTTParty.get('http://pinballmap.com/api/v1/locations/2405/machine_details.json', format: :json)
    @pins = res['machines']
  end
end
