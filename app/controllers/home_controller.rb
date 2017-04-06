class HomeController < ApplicationController

  def index
    @index = Print.all
  end

end
