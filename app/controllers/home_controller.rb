class HomeController < ApplicationController

  def index
    @print = Print.new
    get_pins
    get_social
    render layout: "home"
  end


  private


  def get_social
    @instagram = Instagram.user_recent_media("2273097174", {:count => 5})
  end

  def get_pins
    res_one = HTTParty.get('http://pinballmap.com/api/v1/locations/2405/machine_details.json', format: :json)
    @floor_pins = res_one['machines']
  end

end
