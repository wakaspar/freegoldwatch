class HomeController < ApplicationController

  def index
    get_pins
    @instagram = Instagram.user_recent_media("2273097174", {:count => 5})
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
