require "spec_helper"
require "btcvenezuela_api"

describe BitcoinVenezuelaAPI do
    
    it "we have internet" do
        server = BitcoinVenezuelaAPI.new()
        expect(server.internet?).to be true
        expect(server.internet_http?).to be true
    end
    
    it "API is Active" do
        server = BitcoinVenezuelaAPI.new()
        expect(server.active_api?).to be true
    end
        
    it "API gives Parseable data" do
        server = BitcoinVenezuelaAPI.new()
        expect(server.parseable?).to be true
    end


    it "data is a Json"
    
    it "data is parseable"

    it "data is being inserted correctly"

    it "hasnt changed its structure"
    
    it "worker is active"
    
    it "value is float"
    
    it "description vs is correct"    
    
end

# https://github.com/btcven/api