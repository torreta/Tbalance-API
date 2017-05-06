require 'net/ping'

class DolarHistoryApi


    # examples: 
    # http://stackoverflow.com/questions/21081639/ping-for-reachability-of-remote-host-in-ruby
    
    # API to check:
    # http://api.bitcoinvenezuela.com/historical/
    
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
        uri = URI('http://api.bitcoinvenezuela.com/historical/')
        res = Net::HTTP.get_response(uri)
        return res.is_a?(Net::HTTPSuccess) 
    end
    
    # data can be parsed?
    def parseable?
        uri = URI('http://api.bitcoinvenezuela.com/historical/')
        res = Net::HTTP.get_response(uri)
        body = res.body
        return eval(body).is_a?(Hash)
    end   

    # Hash
    def get_hash
        uri = URI('http://api.bitcoinvenezuela.com/historical/')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        return body
    end
 
    # I start assuming that the the API info hasnt changed
    # and if something has changed i which one.
    def changed?
        changed = "false" 
        uri = URI('http://api.bitcoinvenezuela.com/historical/')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        
        # 14 mayor tags: USD_BTC, VEF_BTC, USD_LTC, VEF_LTC, BTC_LTC, EUR_BTC, ARS_BTC, EUR_LTC, ARS_LTC, USD_MSC, EUR_MSC, VEF_MSC, ARS_MSC, BTC_MSC 
        unless body.size == 14
            changed = "One on the mayor tags has changed"    
        end        

        return changed
    end   


end