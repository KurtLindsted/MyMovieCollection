# require "httparty" 
require 'omdb/api'

class Omdbapi
    # attr_accessor :value_1, :value_2, :data
    # @@url = "http://www.omdbapi.com/?apikey=a0d3142a"

    # movies = HTTParty.get(url)  

    @@api_key = "a0d3142a"
    def initialize()  
    end  
 
    def GetMovie(param)
        client = Omdb::Api::Client.new do |config|
            config.api_key = @@api_key
          end
        movieFound = client.find_by_title(param)
        if movieFound == nil

        end
        return movieFound
        # json = JSON.parse(movieFound)
        # client.search('indiana jones')
        # response = HTTParty.get("#{@@url}&t=#{par}")
        # json = JSON.parse(response.body)
    end

    def GetMovieById(imdbId)
        client = Omdb::Api::Client.new do |config|
            config.api_key = @@api_key
        end
        client.find_by_id(imdbId)
    end
end