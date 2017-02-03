module WeatherHelper
  def parse_data
    weather_data = []
    weather_data << @current["location"]["name"]
    weather_data << @current["location"]["region"]
    weather_data << @current["location"]["country"]
    weather_data << @current["current"]["wind_mph"]
    weather_data << @current["current"]["wind_kph"]
    weather_data << @current["current"]["wind_degree"]
    weather_data << @current["current"]["humidity"]
    weather_data << @current["current"]["temp_c"]
    weather_data << @current["current"]["temp_f"]
    weather_data
  end

  def city_name
    parse_data[0]
  end
  def region
     parse_data[1]
  end
  def country
     parse_data[2]
  end
  def wind_mph
     parse_data[3]
  end
  def wind_kph
     parse_data[4]
  end
  def wind_degree
     parse_data[5]
  end
  def humidity
     parse_data[6]
  end
  def temp_c
     parse_data[7]
  end
  def temp_f
     parse_data[8]
  end


end