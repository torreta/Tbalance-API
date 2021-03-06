require 'net/ping'

class DolarTodayApi
    # examples: 
    # http://stackoverflow.com/questions/21081639/ping-for-reachability-of-remote-host-in-ruby
    
    # API to check:
    # https://api.bitcoinvenezuela.com/DolarToday.php?json=yes
    
    
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
    # http://ruby-doc.org/stdlib-2.4.1/libdoc/net/http/rdoc/index.html
    def active_api?
        uri = URI('https://api.bitcoinvenezuela.com/DolarToday.php?json=yes')
        res = Net::HTTP.get_response(uri)
        return res.is_a?(Net::HTTPSuccess) 
    end

    # data can be parsed?
    def parseable?
        uri = URI('https://api.bitcoinvenezuela.com/DolarToday.php?json=yes')
        res = Net::HTTP.get_response(uri)
        body = res.body
        return eval(body).is_a?(Hash)
    end   
 
    # Hash
    def get_hash
        uri = URI('https://api.bitcoinvenezuela.com/DolarToday.php?json=yes')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        return body
    end
 
    # I start assuming that the the API info hasnt changed
    # and if something has changed i which one.
    def changed?
        changed = "false" 
        uri = URI('https://api.bitcoinvenezuela.com/DolarToday.php?json=yes')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        
        # 12 mayor tags: _antibloqueo, _labels, _timestamp, USD, EUR, COL, GOLD, USDVEF, USDCOL, EURUSD, BCV, MISC
        unless body.size == 12
            changed = "One on the mayor tags has changed"    
        end        
        
        #  _antibloqueo
        unless body[:_antibloqueo].size == 10
            changed = "_antibloqueo tags has changed"    
        end        
            
        # _labels
        unless body[:_labels].size == 6
            changed = "_labels tags has changed"    
        end
        
        # _timestamp
        unless body[:_timestamp].size == 7
            changed = "_timestamp tags has changed"    
        end
        
        # USD
        unless body[:USD].size == 12
            changed = "USD tags has changed"    
        end
        
        # EUR
        unless body[:EUR].size == 11
            changed = "EUR tags has changed"    
        end
        
        # COL
        unless body[:COL].size == 4
            changed = "COL tags has changed"    
        end
        
        # GOLD
        unless body[:GOLD].size == 1
            changed = "GOLD tags has changed"    
        end
        
        # USDVEF
        unless body[:USDVEF].size == 1
            changed = "USDVEF tags has changed"    
        end
        
        # USDCOL
        unless body[:USDCOL].size == 7
            changed = "USDCOL tags has changed"    
        end
        
        # EURUSD
        unless body[:EURUSD].size == 1
            changed = "EURUSD tags has changed"    
        end
        
        # BCV
        unless body[:BCV].size == 4
            changed = "BCV tags has changed"    
        end
        
        # MISC
        unless body[:MISC].size == 2
            changed = "MISC tags has changed"    
        end

        return changed
    end   
 
    #gime timestamp
    def hash_timestamp
        uri = URI('https://api.bitcoinvenezuela.com/DolarToday.php?json=yes')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        tiempo = body[:_timestamp][:epoch]
        tiempo = DateTime.strptime(tiempo,'%s')
        return Time.at(tiempo)
    end   
 
    # "USD":
    # transferencia
    def USD_transfer
        uri = URI('https://api.bitcoinvenezuela.com/DolarToday.php?json=yes')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        value = body[:USD][:transferencia]
        return value
    end   

    # transfer_cucuta
    def USD_transfer_cucuta
        uri = URI('https://api.bitcoinvenezuela.com/DolarToday.php?json=yes')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        value = body[:USD][:transfer_cucuta]
        return value
    end   

    # efectivo
    def USD_efectivo
        uri = URI('https://api.bitcoinvenezuela.com/DolarToday.php?json=yes')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        value = body[:USD][:efectivo]
        return value
    end      
    
    # efectivo_real
    def USD_efectivo_real
        uri = URI('https://api.bitcoinvenezuela.com/DolarToday.php?json=yes')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        value = body[:USD][:efectivo_real]
        return value
    end      
    
    # efectivo_cucuta
    def USD_efectivo_real
        uri = URI('https://api.bitcoinvenezuela.com/DolarToday.php?json=yes')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        value = body[:USD][:efectivo_cucuta]
        return value
    end   
    
    # promedio
    def USD_promedio
        uri = URI('https://api.bitcoinvenezuela.com/DolarToday.php?json=yes')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        value = body[:USD][:promedio]
        return value
    end   
    
    # promedio_real
    def USD_promedio_real
        uri = URI('https://api.bitcoinvenezuela.com/DolarToday.php?json=yes')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        value = body[:USD][:promedio_real]
        return value
    end   
    
    # cencoex
    def USD_cencoex
        uri = URI('https://api.bitcoinvenezuela.com/DolarToday.php?json=yes')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        value = body[:USD][:cencoex]
        return value.to_f
    end   
    
    # sicad1
    def USD_sicad1
        uri = URI('https://api.bitcoinvenezuela.com/DolarToday.php?json=yes')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        value = body[:USD][:sicad1]
        return value
    end   
    
    # sicad2
    def USD_sicad2
        uri = URI('https://api.bitcoinvenezuela.com/DolarToday.php?json=yes')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        value = body[:USD][:sicad2]
        return value
    end       
    
    # bitcoin_ref
    def USD_bitcoin_ref
        uri = URI('https://api.bitcoinvenezuela.com/DolarToday.php?json=yes')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        value = body[:USD][:bitcoin_ref]
        return value
    end    
    
    # dolartoday
    def USD_dolartoday
        uri = URI('https://api.bitcoinvenezuela.com/DolarToday.php?json=yes')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        value = body[:USD][:dolartoday]
        return value
    end
 
    # "EUR"
    # transferencia
    def EUR_transfer
        uri = URI('https://api.bitcoinvenezuela.com/DolarToday.php?json=yes')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        value = body[:EUR][:transferencia]
        return value
    end
    
    # transfer_cucuta
    def EUR_transfer_cucuta
        uri = URI('https://api.bitcoinvenezuela.com/DolarToday.php?json=yes')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        value = body[:EUR][:transfer_cucuta]
        return value
    end
    
    # efectivo
    def EUR_efectivo
        uri = URI('https://api.bitcoinvenezuela.com/DolarToday.php?json=yes')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        value = body[:EUR][:efectivo]
        return value
    end
    
    # efectivo_real
    def EUR_efectivo_real
        uri = URI('https://api.bitcoinvenezuela.com/DolarToday.php?json=yes')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        value = body[:EUR][:efectivo_real]
        return value
    end
    
    # efectivo_cucuta
    def EUR_efectivo_cucuta
        uri = URI('https://api.bitcoinvenezuela.com/DolarToday.php?json=yes')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        value = body[:EUR][:efectivo_cucuta]
        return value
    end
    
    # promedio
    def EUR_promedio
        uri = URI('https://api.bitcoinvenezuela.com/DolarToday.php?json=yes')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        value = body[:EUR][:promedio]
        return value
    end   
    
    # promedio_real
    def EUR_promedio_real
        uri = URI('https://api.bitcoinvenezuela.com/DolarToday.php?json=yes')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        value = body[:EUR][:promedio_real]
        return value
    end   
    
    # cencoex
    def EUR_cencoex
        uri = URI('https://api.bitcoinvenezuela.com/DolarToday.php?json=yes')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        value = body[:EUR][:cencoex]
        return value
    end   
    
    # sicad1
    def EUR_sicad1
        uri = URI('https://api.bitcoinvenezuela.com/DolarToday.php?json=yes')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        value = body[:EUR][:sicad1]
        return value
    end   
    
    # sicad2
    def EUR_sicad2
        uri = URI('https://api.bitcoinvenezuela.com/DolarToday.php?json=yes')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        value = body[:EUR][:sicad2]
        return value
    end   
    
    # dolartoday
    def EUR_dolartoday
        uri = URI('https://api.bitcoinvenezuela.com/DolarToday.php?json=yes')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        value = body[:EUR][:dolartoday]
        return value
    end   

    # COL
    # efectivo
    def COL_efectivo
        uri = URI('https://api.bitcoinvenezuela.com/DolarToday.php?json=yes')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        value = body[:COL][:efectivo]
        return value
    end   

    # transfer
    def COL_transfer
        uri = URI('https://api.bitcoinvenezuela.com/DolarToday.php?json=yes')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        value = body[:COL][:transfer]
        return value
    end   
    
    # compra
    def COL_compra
        uri = URI('https://api.bitcoinvenezuela.com/DolarToday.php?json=yes')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        value = body[:COL][:compra]
        return value
    end   
    
    # venta
    def COL_venta
        uri = URI('https://api.bitcoinvenezuela.com/DolarToday.php?json=yes')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        value = body[:COL][:venta]
        return value
    end   
    
    # GOLD
    # rate
    def GOLD
        uri = URI('https://api.bitcoinvenezuela.com/DolarToday.php?json=yes')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        value = body[:GOLD][:rate]
        return value
    end  
    
    # USDVEF
    # rate
    def USDVEF
        uri = URI('https://api.bitcoinvenezuela.com/DolarToday.php?json=yes')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        value = body[:USDVEF][:rate]
        return value
    end  
    
    # USDCOL
    # setfxsell
    def USDCOL_setfxsell
        uri = URI('https://api.bitcoinvenezuela.com/DolarToday.php?json=yes')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        value = body[:USDCOL][:setfxsell]
        return value.to_f
    end
    
    # setfxbuy
    def USDCOL_setfxbuy
        uri = URI('https://api.bitcoinvenezuela.com/DolarToday.php?json=yes')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        value = body[:USDCOL][:setfxbuy]
        return value.to_f
    end
    
    # rate
    def USDCOL_rate
        uri = URI('https://api.bitcoinvenezuela.com/DolarToday.php?json=yes')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        value = body[:USDCOL][:rate]
        return value.to_f
    end
    
    # ratecash
    def USDCOL_ratecash
        uri = URI('https://api.bitcoinvenezuela.com/DolarToday.php?json=yes')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        value = body[:USDCOL][:ratecash]
        return value.to_f
    end
    
    # ratetrm
    def USDCOL_ratetrm
        uri = URI('https://api.bitcoinvenezuela.com/DolarToday.php?json=yes')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        value = body[:USDCOL][:ratetrm]
        return value.to_f
    end
    
    # trmfactor
    def USDCOL_trmfactor
        uri = URI('https://api.bitcoinvenezuela.com/DolarToday.php?json=yes')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        value = body[:USDCOL][:trmfactor]
        return value.to_f
    end
    
    # trmfactorcash
    def USDCOL_trmfactorcash
        uri = URI('https://api.bitcoinvenezuela.com/DolarToday.php?json=yes')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        value = body[:USDCOL][:trmfactorcash]
        return value
    end
    
    # EURUSD
    # rate
    def EURUSD
        uri = URI('https://api.bitcoinvenezuela.com/DolarToday.php?json=yes')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        value = body[:EURUSD][:rate]
        return value
    end
    
    # BCV:
    # fecha
    def BCV_fecha
        uri = URI('https://api.bitcoinvenezuela.com/DolarToday.php?json=yes')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        tiempo = body[:BCV][:fecha]
        tiempo = DateTime.strptime(tiempo,'%s')
        return Time.at(tiempo)
    end
    
    # liquidez
    def BCV_liquidez
        uri = URI('https://api.bitcoinvenezuela.com/DolarToday.php?json=yes')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        value = body[:BCV][:liquidez]
        return value.to_f
    end
    
    # reservas
    def BCV_reservas
        uri = URI('https://api.bitcoinvenezuela.com/DolarToday.php?json=yes')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        value = body[:BCV][:reservas]
        return value.to_f
    end 

    # MISC:
    # petroleo
    def MISC_petroleo
        uri = URI('https://api.bitcoinvenezuela.com/DolarToday.php?json=yes')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        value = body[:MISC][:petroleo]
        return value.to_f
    end
    
    # reservas
    def MISC_reservas
        uri = URI('https://api.bitcoinvenezuela.com/DolarToday.php?json=yes')
        res = Net::HTTP.get_response(uri)
        body = eval(res.body)
        value = body[:MISC][:reservas]
        return value.to_f
    end
 
 
end