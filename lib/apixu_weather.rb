require 'api_consumer'
require 'open-uri'

class ApixuWeather < APIConsumer
  def self.current(city, reload = false)
    city = URI::encode(city)
    path = "/v1/current.json?q=#{city}&key=#{settings[:key]}"
    do_request(path, connection, {reload: reload, ttl: 900, key: "cur-#{city.downcase}"})
  end
end
