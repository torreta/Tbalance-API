require 'net/ping'

class BitcoinVenezuelaApi
    # examples: 
    # http://stackoverflow.com/questions/21081639/ping-for-reachability-of-remote-host-in-ruby
    
    # API to check:
    # http://api.bitcoinvenezuela.com/
    
    
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
    
    #gime timestamp
    def TimeStamp
        uri = URI('http://api.bitcoinvenezuela.com/')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        tiempo = body[:time][:timestamp]
        return Time.at(tiempo)
    end   
    
    def BTC_to_USD
        uri = URI('http://api.bitcoinvenezuela.com/')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        value = body[:BTC][:USD]
        return value
    end       
    
    def BTC_to_EUR
        uri = URI('http://api.bitcoinvenezuela.com/')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        value = body[:BTC][:EUR]
        return value
    end      
    
    def BTC_to_VEF
        uri = URI('http://api.bitcoinvenezuela.com/')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        value = body[:BTC][:VEF]
        return value
    end      
    
    def BTC_to_ARS
        uri = URI('http://api.bitcoinvenezuela.com/')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        value = body[:BTC][:ARS]
        return value
    end       
    
    def BTC_to_LTC
        uri = URI('http://api.bitcoinvenezuela.com/')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        value = body[:BTC][:LTC]
        return value.to_f
    end       
    
    # LTC
    def LTC_to_USD
        uri = URI('http://api.bitcoinvenezuela.com/')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        value = body[:LTC][:USD]
        return value
    end   
    
    def LTC_to_EUR
        uri = URI('http://api.bitcoinvenezuela.com/')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        value = body[:LTC][:EUR]
        return value
    end   
    
    def LTC_to_VEF
        uri = URI('http://api.bitcoinvenezuela.com/')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        value = body[:LTC][:VEF]
        return value
    end   
    
    def LTC_to_ARS
        uri = URI('http://api.bitcoinvenezuela.com/')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        value = body[:LTC][:ARS]
        return value
    end   
    
    
    def LTC_to_BTC
        uri = URI('http://api.bitcoinvenezuela.com/')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        value = body[:LTC][:BTC]
        return value
    end   
    
    # exchange rates
    def rate_EUR_USD
        uri = URI('http://api.bitcoinvenezuela.com/')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        value = body[:exchange_rates][:EUR_USD]
        return value
    end   
    
    def rate_VEF_USD
        uri = URI('http://api.bitcoinvenezuela.com/')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        value = body[:exchange_rates][:VEF_USD]
        return value
    end 
    
    def rate_ARS_USD
        uri = URI('http://api.bitcoinvenezuela.com/')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        value = body[:exchange_rates][:ARS_USD]
        return value
    end   
        
    def rate_XVE_USD
        uri = URI('http://api.bitcoinvenezuela.com/')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        value = body[:exchange_rates][:XVE_USD]
        return value
    end   
        
    def rate_XVE_EUR
        uri = URI('http://api.bitcoinvenezuela.com/')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        value = body[:exchange_rates][:XVE_EUR]
        return value
    end   
        
    def rate_XAR_USD
        uri = URI('http://api.bitcoinvenezuela.com/')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        value = body[:exchange_rates][:XAR_USD]
        return value.to_f
    end   
    
    # LocalBitcoins_coupons":{"USD":"1487.07","XVE":6890086.0431}
    def local_USD
        uri = URI('http://api.bitcoinvenezuela.com/')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        value = body[:LocalBitcoins_coupons][:USD]
        return value.to_f
    end       
    
    def local_XVE
        uri = URI('http://api.bitcoinvenezuela.com/')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        value = body[:LocalBitcoins_coupons][:XVE]
        return value
    end   
    
    
end