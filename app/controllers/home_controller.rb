require 'net/http'

class HomeController < ApplicationController
  def index
    url = "https://api.openweathermap.org/data/2.5/weather?lat=55,7522&lon=37,6156&units=metric&appid=a814437c40c3e322dc2b8e4a175d2d4f"
    uri = URI(url)
    res = Net::HTTP.get_response(uri)
    @data = JSON.parse(res.body)
  end
end
