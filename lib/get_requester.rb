require 'net/http'
require 'open-uri'
require 'json'

class GetRequester
  
  def initalize(url)
    @url = url 
  end
  
  def get_response_body
    uri = URI.parse(@url)
    response = Net::HTTP.get_response(uri)
    response.body  
  end

  #def parse_json
  #  programs = JSON.parse(self.get_programs)
  #end
  
end
