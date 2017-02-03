class WeatherController < ApplicationController
  def search
    @city = params[:city]
    if @city != nil
      redirect_to weather_show_path
    end
  end
  def show
    @city = params[:city]
    @current = ApixuWeather.current(@city)
  end
end
