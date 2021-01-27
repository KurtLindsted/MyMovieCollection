require "rubygems"
require "httparty" 

class MovieApi < ApplicationRecord
    include "httparty"
   # base_uri "jsonplaceholder.typicode.com"
    base_uri "http://jsonplaceholder.typicode.com"

    def posts
        self.class.get("/posts")
    end
end

#ap = movieApi.new
#puts ap.posts