require "spec_helper"
require "bitcoin_venezuela_api"

describe BitcoinVenezuelaApi do
    
    it "we have internet" do
        server = BitcoinVenezuelaApi.new()
        expect(server.internet?).to be true
        expect(server.internet_http?).to be true
    end
    
    it "API is Active" do
        server = BitcoinVenezuelaApi.new()
        expect(server.active_api?).to be true
    end
        
    it "API gives Parseable data" do
        server = BitcoinVenezuelaApi.new()
        expect(server.parseable?).to be true
    end

    it "data has timestamp" do
      server = BitcoinVenezuelaApi.new()
      expect(Time.at(server.TimeStamp).is_a?(Time)).to be true
    end
    
    it "BTC USD value present" do
      server = BitcoinVenezuelaApi.new()
      expect(server.BTC_to_USD.is_a?(Float)).to be true
    end    
    
    it "BTC EUR value present" do
      server = BitcoinVenezuelaApi.new()
      expect(server.BTC_to_EUR.is_a?(Float)).to be true
    end

    it "BTC VEF value present" do
      server = BitcoinVenezuelaApi.new()
      expect(server.BTC_to_VEF.is_a?(Float)).to be true
    end
    
    it "BTC ARS value present" do
      server = BitcoinVenezuelaApi.new()
      expect(server.BTC_to_ARS.is_a?(Float)).to be true
    end
    
    it "BTC LTC value present" do
      server = BitcoinVenezuelaApi.new()
      expect(server.BTC_to_LTC.is_a?(Float)).to be true
    end

    # LTC
    it "LTC USD value present" do
      server = BitcoinVenezuelaApi.new()
      expect(server.LTC_to_USD.is_a?(Float)).to be true
    end       
    
    it "LTC EUR value present" do
      server = BitcoinVenezuelaApi.new()
      expect(server.LTC_to_EUR.is_a?(Float)).to be true
    end       
    
    it "LTC VEF value present" do
      server = BitcoinVenezuelaApi.new()
      expect(server.LTC_to_VEF.is_a?(Float)).to be true
    end       
    
    it "LTC ARS value present" do
      server = BitcoinVenezuelaApi.new()
      expect(server.LTC_to_ARS.is_a?(Float)).to be true
    end       
    
    it "LTC BTC value present" do
      server = BitcoinVenezuelaApi.new()
      expect(server.LTC_to_BTC.is_a?(Float)).to be true
    end   
    
    # missing test Exchange rates,LocalBitcoins_coupons and variations
    # dunno what are most of those.
    it " Exchange rate for EUR_USD present" do
      server = BitcoinVenezuelaApi.new()
      expect(server.rate_EUR_USD.is_a?(Float)).to be true
    end    
    
    it " Exchange rate for VEF_USD present" do
      server = BitcoinVenezuelaApi.new()
      expect(server.rate_VEF_USD.is_a?(Float)).to be true
    end    
    
    it " Exchange rate for ARS_USD present" do
      server = BitcoinVenezuelaApi.new()
      expect(server.rate_ARS_USD.is_a?(Float)).to be true
    end    
    
    it " Exchange rate for XVE_USD present" do
      server = BitcoinVenezuelaApi.new()
      expect(server.rate_XVE_USD.is_a?(Float)).to be true
    end    
    
    it " Exchange rate for XVE_EUR present" do
      server = BitcoinVenezuelaApi.new()
      expect(server.rate_XVE_EUR.is_a?(Float)).to be true
    end    
    
    it " Exchange rate for XAR_USD present" do
      server = BitcoinVenezuelaApi.new()
      expect(server.rate_XAR_USD.is_a?(Float)).to be true
    end
    
    # LocalBitcoins_coupons
    it " Local USD present" do
      server = BitcoinVenezuelaApi.new()
      expect(server.rate_XAR_USD.is_a?(Float)).to be true
    end    
    
    it " Local USD present" do
      server = BitcoinVenezuelaApi.new()
      expect(server.local_USD.is_a?(Float)).to be true
    end
    
    it " Local XVE present" do
      server = BitcoinVenezuelaApi.new()
      expect(server.local_XVE.is_a?(Float)).to be true
    end
    # idea: count hash sizes, etc, if that changes, say it
    it "hasnt changed its structure" 


    it "data is being inserted correctly"

    it "worker is active"
    
    it "value is float"
    
    it "description vs is correct"    
    
end

# http://api.bitcoinvenezuela.com/