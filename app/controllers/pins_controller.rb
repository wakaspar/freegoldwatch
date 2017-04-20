class PinsController < ApplicationController
  before_action :authenticate_admin!
  include HTTParty

  def index
    get_pins

    render layout: "admin"
  end

  def create
    @pin = HTTParty.post('http://pinballmap.com/api/v1/location_machine_xrefs.json',
      :body => {:location_id => 2405,
                :machine_id => params[:machine_id] })

    redirect_to pins_path
  end

  def destroy
    user_res = HTTParty.get('http://pinballmap.com/api/v1/users/auth_details.json',
      :body => {:login => 'wakaspar',
                :password => 'Yeongtong-403'})
    token = user_res['user']['authentication_token']

    res = HTTParty.post('http://pinballmap.com/api/v1/location_machine_xrefs.json',
      :body => {
                :location_id => 2405,
                :machine_id => params[:machine_id],
                :authenticity_token => token
                 })
    @location_machine_xref_id = res['location_machine']['id']

    @pin = HTTParty.delete("http://pinballmap.com/api/v1/location_machine_xrefs/#{@location_machine_xref_id}.json")

    redirect_to pins_path
  end

  private

  def get_pins
    res = HTTParty.get('http://pinballmap.com/api/v1/locations/2405/machine_details.json', format: :json)
    @floor_pins = res['machines']

    res_two = HTTParty.get('http://pinballmap.com/api/v1/machines.json', format: :json)
    @pin_db = res_two['machines']
  end

end
