class PinsController < ApplicationController
  include HTTParty

  def index
    @response = HTTParty.get("https://pinballmap.com/api/v1/machines.json2")
  end

end
