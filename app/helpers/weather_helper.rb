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
    weather_data << @current["current"]["condition"]["text"]
    weather_data << @current["current"]["condition"]["icon"]

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
  def conditions
     parse_data[9]
  end

  def day_time?
     parse_data[10].include?("day") ? true : false
  end

  def forecast_data
   forecast_info = []
   forecast = @forecast["forecast"]["forecastday"]
   forecast.each do |f|
     forecast_info <<  f["date"]
     forecast_info << f["day"]["maxtemp_f"]
     forecast_info << f["day"]["mintemp_f"]
     forecast_info << f["day"]["condition"]["text"]
   end
   forecast_info
  end
  def current_time
    Time.now
  end

  def day_1_date
   forecast_data[0]
  end

  def day_1_maxtemp
   forecast_data[1]
  end

  def day_1_mintemp
    forecast_data[2]
  end

  def day_1_condition
  condition =  forecast_data[3]
 result = case condition
 when condition == 'Partly cloudy' then return "pc.png"
 when condition == 'Patchy freezing drizzle nearby' || condition == 'Patchy rain nearby' || condition == 'Patchy sleet nearby' || condition == 'Light rain' || condition == 'Moderate rain at times' || condition == 'Moderate rain' || condition == 'Heavy rain at times' || condition == 'Heavy rain' || condition == 'Light freezing rain' || condition == 'Moderate or heavy freezing rain' || condition =='Light rain shower' || condition == 'Moderate or heavy rain shower' || condition == 'Torrential rain shower' || condition == 'Patchy light rain in area with thunder' || condition == 'Moderate or heavy rain in area with thunder' then return  "rainy.png"
 when condition == 'Clear' || condition == 'Sunny' then return "sun.png"
 when condition == 'Patchy snow nearby' || condition == 'Patchy light snow' || condition == 'Blowing snow' || condition == 'Blizzard' || condition == 'Patchy light snow' || condition == 'Light snow' ||  condition == 'Patchy moderate snow' || condition == 'Moderate snow' || condition == 'Patchy heavy snow' || condition == 'Heavy snow' || condition == 'Light snow showers' ||  condition =='Moderate or heavy snow showers' || condition == 'Patchy light snow in area with thunder' || condition == 'Moderate or heavy snow in area with thunder' then return "snow.png"
 when condition == 'Cloudy' || condition == 'Overcast' || condition == 'Mist' || condition == 'Thundery outbreaks in nearby' then return "cloudy.png"

 end
 result
  end

  def day_2_date
   forecast_data[4]
  end

  def day_2_maxtemp
   forecast_data[5]
  end

  def day_2_mintemp
    forecast_data[6]
  end

  def day_2_condition
    forecast_data[7]
  end

  def day_3_date
   forecast_data[8]
  end

  def day_3_maxtemp
   forecast_data[9]
  end

  def day_3_mintemp
    forecast_data[10]
  end

  def day_3_condition
    forecast_data[11]
  end

  def day_4_date
   forecast_data[12]
  end

  def day_4_maxtemp
   forecast_data[13]
  end

  def day_4_mintemp
    forecast_data[14]
  end

  def day_4_condition
    forecast_data[15]
  end

  def day_5_date
   forecast_data[16]
  end

  def day_5_maxtemp
   forecast_data[17]
  end

  def day_5_mintemp
    forecast_data[18]
  end

  def day_5_condition
    forecast_data[19]
  end

  def day_6_date
   forecast_data[20]
  end
  def day_6_maxtemp
   forecast_data[21]
  end

  def day_6_mintemp
    forecast_data[22]
  end

  def day_6_condition
    forecast_data[23]
  end

  def day_7_date
   forecast_data[24]
  end
  def day_7_maxtemp
   forecast_data[25]
  end

  def day_7_mintemp
    forecast_data[26]
  end

  def day_7_condition
    forecast_data[27]
  end
end
