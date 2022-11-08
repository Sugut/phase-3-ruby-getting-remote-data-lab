# Write your code here
require 'net/http'
require 'open-uri'
require 'json'

class GetRequester
    
    #url="https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"
  
    def initialize(str)
        @str = str
        @uri =''
    end
    def get_response_body
        @uri = URI.parse(@str)
        @uri.open.string
    end
    def parse_json
        JSON.parse(Net::HTTP.get_response(URI.parse(@str)).body)
    end
end    