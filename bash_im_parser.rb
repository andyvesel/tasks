require 'net/http'
require 'json'

uri = URI("http://bash.im/")

response = Net::HTTP.get_response(uri)
p response.to_json