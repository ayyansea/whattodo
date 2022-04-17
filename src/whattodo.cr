require "http/client"
require "json"
require "format"

URL = "https://www.boredapi.com/api/activity"

begin
    response = HTTP::Client.get(URL)

    body = JSON.parse(response.body) 
    formatted = formatter(body)

    puts ""
    formatted.each do |string|
        puts string
    end
    puts ""
rescue ex : Socket::Addrinfo::Error
    puts "Cannot connect to the API. Please check your internet connection."
end
