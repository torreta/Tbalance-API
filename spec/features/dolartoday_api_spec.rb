require "spec_helper"
require "dolartoday_api"

describe DolarTodayApi do
    
    it "we have internet" do
        server = DolarTodayApi.new()
        expect(server.internet?).to be true
        expect(server.internet_http?).to be true
    end
    
    it "API is Active" do
        server = DolarTodayApi.new()
        expect(server.active_api?).to be true
    end
    
    it "API gives Parseable data" do
        server = DolarTodayApi.new()
        expect(server.parseable?).to be true
    end


    it "Raw hash request working " do 
      server = DolarTodayApi.new()
      expect(server.get_hash.is_a?(Hash)).to be true
    end 

    # should see if all important data is there
    it "hasnt changed its structure" do
      server = DolarTodayApi.new()
      expect(server.changed?).to eq("false")
    end

    it "data has timestamp" do
      server = DolarTodayApi.new()
      expect(Time.at(server.hash_timestamp).is_a?(Time)).to be true
    end

    # USD
    it "USD_transfer present" do
      server = DolarTodayApi.new()
      expect(server.USD_transfer.is_a?(Float)).to be true
    end
    
    it "USD_transfer_cucuta present" do
      server = DolarTodayApi.new()
      expect(server.USD_transfer_cucuta.is_a?(Float)).to be true
    end
    
    it "USD_efectivo present" do
      server = DolarTodayApi.new()
      expect(server.USD_efectivo.is_a?(Float)).to be true
    end
    
    it "USD_efectivo_real present" do
      server = DolarTodayApi.new()
      expect(server.USD_efectivo_real.is_a?(Float)).to be true
    end
    
    it "USD_efectivo_real present" do
      server = DolarTodayApi.new()
      expect(server.USD_efectivo_real.is_a?(Float)).to be true
    end
    
    it "USD_promedio present" do
      server = DolarTodayApi.new()
      expect(server.USD_promedio.is_a?(Float)).to be true
    end
    
    it "USD_promedio_real present" do
      server = DolarTodayApi.new()
      expect(server.USD_promedio_real.is_a?(Float)).to be true
    end
    
    it "USD_cencoex present" do
      server = DolarTodayApi.new()
      expect(server.USD_cencoex.is_a?(Float)).to be true
    end
    
    it "USD_sicad1 present" do
      server = DolarTodayApi.new()
      expect(server.USD_sicad1.is_a?(Float)).to be true or expect(server.USD_sicad1).to be eq(0)
    end
    
    it "USD_sicad2 present" do
      server = DolarTodayApi.new()
      expect(server.USD_sicad2.is_a?(Float)).to be true
    end
    
    it "USD_bitcoin_ref present" do
      server = DolarTodayApi.new() 
      expect(server.USD_bitcoin_ref.is_a?(Float)).to be true or expect(server.USD_bitcoin_ref).to be eq(0)
    end
    
    it "USD_dolartoday present" do
      server = DolarTodayApi.new()
      expect(server.USD_dolartoday.is_a?(Float)).to be true
    end
    
    # EUR
    it "EUR_transfer present" do
      server = DolarTodayApi.new()
      expect(server.EUR_transfer.is_a?(Float)).to be true
    end
    
    it "EUR_transfer_cucuta present" do
      server = DolarTodayApi.new()
      expect(server.EUR_transfer_cucuta.is_a?(Float)).to be true
    end
    
    it "EUR_efectivo present" do
      server = DolarTodayApi.new()
      expect(server.EUR_efectivo.is_a?(Float)).to be true
    end
    
    it "EUR_efectivo_real present" do
      server = DolarTodayApi.new()
      expect(server.EUR_efectivo_real.is_a?(Float)).to be true
    end
    
    it "EUR_efectivo_cucuta present" do
      server = DolarTodayApi.new()
      expect(server.EUR_efectivo_cucuta.is_a?(Float)).to be true
    end
    
    it "EUR_promedio present" do
      server = DolarTodayApi.new()
      expect(server.EUR_promedio.is_a?(Float)).to be true
    end
    
    it "EUR_promedio_real present" do
      server = DolarTodayApi.new()
      expect(server.EUR_promedio_real.is_a?(Float)).to be true
    end
    
    it "EUR_cencoex present" do
      server = DolarTodayApi.new()
      expect(server.EUR_cencoex.is_a?(Float)).to be true
    end
    
    it "EUR_sicad1 present" do
      server = DolarTodayApi.new()
      expect(server.EUR_sicad1.is_a?(Float)).to be true or expect(server.EUR_sicad1).to be eq(0)
    end
    
    it "EUR_sicad2 present" do
      server = DolarTodayApi.new()
      expect(server.EUR_sicad2.is_a?(Float)).to be true
    end
    
    it "EUR_dolartoday present" do
      server = DolarTodayApi.new()
      expect(server.EUR_dolartoday.is_a?(Float)).to be true
    end
    
    # COL
    it "COL_efectivo present" do
      server = DolarTodayApi.new()
      expect(server.COL_efectivo.is_a?(Float)).to be true
    end
    
    it "COL_transfer present" do
      server = DolarTodayApi.new()
      expect(server.COL_transfer.is_a?(Float)).to be true
    end
    
    it "COL_compra present" do
      server = DolarTodayApi.new()
      expect(server.COL_compra.is_a?(Float)).to be true
    end
    
    it "COL_venta present" do
      server = DolarTodayApi.new()
      expect(server.COL_venta.is_a?(Float)).to be true
    end
    
    # GOLD
    it "GOLD present" do
      server = DolarTodayApi.new()
      expect(server.GOLD.is_a?(Float)).to be true
    end
    
    # cambios
    it "USDVEF present" do
      server = DolarTodayApi.new()
      expect(server.USDVEF.is_a?(Float)).to be true
    end
    
    it "USDCOL_setfxsell present" do
      server = DolarTodayApi.new()
      expect(server.USDCOL_setfxsell.is_a?(Float)).to be true
    end
    
    it "USDCOL_setfxbuy present" do
      server = DolarTodayApi.new()
      expect(server.USDCOL_setfxbuy.is_a?(Float)).to be true
    end
    
    it "USDCOL_rate present" do
      server = DolarTodayApi.new()
      expect(server.USDCOL_rate.is_a?(Float)).to be true
    end
    
    it "USDCOL_ratecash present" do
      server = DolarTodayApi.new()
      expect(server.USDCOL_ratecash.is_a?(Float)).to be true
    end
    
    it "USDCOL_ratetrm present" do
      server = DolarTodayApi.new()
      expect(server.USDCOL_ratetrm.is_a?(Float)).to be true
    end
    
    it "USDCOL_trmfactor present" do
      server = DolarTodayApi.new()
      expect(server.USDCOL_trmfactor.is_a?(Float)).to be true
    end
    
    it "USDCOL_trmfactorcash present" do
      server = DolarTodayApi.new()
      expect(server.USDCOL_trmfactorcash.is_a?(Float)).to be true
    end
    
    it "EURUSD present" do
      server = DolarTodayApi.new()
      expect(server.EURUSD.is_a?(Float)).to be true
    end
    
    # BCV - Banco central de Venezuela
    it "BCV_fecha present" do
      server = DolarTodayApi.new()
      expect(Time.at(server.BCV_fecha).is_a?(Time)).to be true
    end
    
    it "BCV_liquidez present" do
      server = DolarTodayApi.new()
      expect(server.BCV_liquidez.is_a?(Float)).to be true
    end
    
    it "BCV_reservas present" do
      server = DolarTodayApi.new()
      expect(server.BCV_reservas.is_a?(Float)).to be true
    end
    
    # Micelaneous
    it "MISC_petroleo present" do
      server = DolarTodayApi.new()
      expect(server.MISC_petroleo.is_a?(Float)).to be true
    end
    
    it "MISC_petroleo present" do
      server = DolarTodayApi.new()
      expect(server.MISC_reservas.is_a?(Float)).to be true
    end


    it "data is being inserted correctly"

    it "worker is active"
    
    it "value is float"
    
    it "description vs is correct"    
    
end

# http://api.bitcoinvenezuela.com/DolarToday.php?json=yes