class HomeController < ApplicationController

  def index
    get_pins
    get_social
    render layout: "home"
  end



  private

  def get_social

  end

  def get_pins
    res = HTTParty.get('http://pinballmap.com/api/v1/locations/2405/machine_details.json', format: :json)
    @pins = res['machines']
  end

end
