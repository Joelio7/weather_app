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

    weather_data << @current["current"]["wind_dir"]
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
     parse_data[8].round / 1
  end

  def conditions
     parse_data[9]
  end

  def day_time?
     parse_data[10].include?("day") ? true : false
  end

  def wind_dir
     parse_data[11]
  end

  def day3
    t = Time.now
    if t.sunday? == true
      "Tuesday"
    elsif t.monday? == true
      "Wednesday"
    elsif t.tuesday? == true
      "Thursday"
    elsif t.wednesday? == true
      "Friday"
    elsif t.thursday? == true
      "Saturday"
    elsif t.friday? == true
      "Sunday"
    elsif t.saturday? == true
      "Monday"
    end
  end

  def day4
    t = Time.now
    if t.sunday? == true
      "Monday"
    elsif t.monday? == true
      "Tuesday"
    elsif t.tuesday? == true
      "Wednesday"
    elsif t.wednesday? == true
      "Thursday"
    elsif t.thursday? == true
      "Friday"
    elsif t.friday? == true
      "Saturday"
    elsif t.saturday? == true
      "Sunday"
    end
  end

  def day5
    t = Time.now
    if t.sunday? == true
      "Sunday"
    elsif t.monday? == true
      "Monday"
    elsif t.tuesday? == true
      "Tuesday"
    elsif t.wednesday? == true
      "Wednesday"
    elsif t.thursday? == true
      "Thursday"
    elsif t.friday? == true
      "Friday"
    elsif t.saturday? == true
      "Saturday"
    end
  end

  def day6
    t = Time.now
    if t.sunday? == true
      "Saturday"
    elsif t.monday? == true
      "Sunday"
    elsif t.tuesday? == true
      "Monday"
    elsif t.wednesday? == true
      "Tuesday"
    elsif t.thursday? == true
      "Wednesday"
    elsif t.friday? == true
      "Thursday"
    elsif t.saturday? == true
      "Friday"
    end
  end

  def day7
    t = Time.now
    if t.sunday? == true
      "Friday"
    elsif t.monday? == true
      "Saturday"
    elsif t.tuesday? == true
      "Sunday"
    elsif t.wednesday? == true
      "Monday"
    elsif t.thursday? == true
      "Tuesday"
    elsif t.friday? == true
      "Wednesday"
    elsif t.saturday? == true
      "Thursday"
    end
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
    t = Time.now
    t.strftime("%A %l:%M %p")
  end

  def day_1_date
   forecast_data[0]
  end

  def day_1_maxtemp
   forecast_data[1].round / 1
  end

  def day_1_mintemp
    forecast_data[2].round / 1
  end

  def day_1_condition
    forecast_data[3]
  end

  def day_2_date
   forecast_data[4]
  end

  def day_2_maxtemp
   forecast_data[5].round / 1
  end

  def day_2_mintemp
    forecast_data[6].round / 1
  end

  def day_2_condition
    forecast_data[7]
  end

  def day_3_date
   forecast_data[8]
  end

  def day_3_maxtemp
   forecast_data[9].round / 1
  end

  def day_3_mintemp
    forecast_data[10].round / 1
  end

  def day_3_condition
    forecast_data[11]
  end

  def day_4_date
   forecast_data[12]
  end

  def day_4_maxtemp
   forecast_data[13].round / 1
  end

  def day_4_mintemp
    forecast_data[14].round / 1
  end

  def day_4_condition
    forecast_data[15]
  end

  def day_5_date
   forecast_data[16]
  end

  def day_5_maxtemp
   forecast_data[17].round / 1
  end

  def day_5_mintemp
    forecast_data[18].round / 1
  end

  def day_5_condition
    forecast_data[19]
  end

  def day_6_date
   forecast_data[20]
  end
  def day_6_maxtemp
   forecast_data[21].round / 1
  end

  def day_6_mintemp
    forecast_data[22].round / 1
  end

  def day_6_condition
    forecast_data[23]
  end

  def day_7_date
   forecast_data[24]
  end
  def day_7_maxtemp
   forecast_data[25].round / 1
  end

  def day_7_mintemp
    forecast_data[26].round / 1
  end

  def day_7_condition
    forecast_data[27]
  end
end
