require 'net/ping'

class BitcoinVenezuelaAPI
    # examples: 
    # http://stackoverflow.com/questions/21081639/ping-for-reachability-of-remote-host-in-ruby
    
    # API to check:
    # http://api.bitcoinvenezuela.com/DolarToday.php?json=yes
    
    
    # checking if our server has internet connection 
    def internet?
        host = '8.8.8.8' #random google dns
        check = Net::Ping::External.new(host)
        check.ping?
    end
    
    # checking if our server has internet connection and http requests 
    def internet_http?
        host_http = 'http://www.google.com/index.html'
        check = Net::Ping::HTTP.new(host_http) #now http not as console
        check.ping?
    end
    
    # checking if the API is active, read below...
    def active_api?
        uri = URI('http://api.bitcoinvenezuela.com/')
        res = Net::HTTP.get_response(uri)
        return res.is_a?(Net::HTTPSuccess) 
    end
    
    # data can be parsed?
    def parseable?
        uri = URI('http://api.bitcoinvenezuela.com/')
        res = Net::HTTP.get_response(uri)
        body = res.body
        return eval(body).is_a?(Hash)
    end   
    
    # data can be parsed?
    def hash_timestamp
        uri = URI('http://api.bitcoinvenezuela.com/')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        tiempo = body[:time][:timestamp]
        return Time.at(tiempo)
    end   
    
    
end