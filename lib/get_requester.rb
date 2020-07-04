require 'net/http'
require 'open-uri'
require 'json'

class GetRequester
  
  def initalize(url)
    URL = url 
  end
  
  def get_response_body
    uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
    response.body  
  end
  
end
