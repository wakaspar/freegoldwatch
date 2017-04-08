class PinsController < ApplicationController
  require HTTParty

  def index
    response = HTTParty.get('https://pinballmap.com/api/v1/machines.json', format: :plain)
    JSON.parse response, symbolize_names: true
    render response
  end

end
