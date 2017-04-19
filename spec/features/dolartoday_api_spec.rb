require "spec_helper"
require "dolartoday_api"

describe DolarTodayAPI do
    
    it "we have internet" do
        server = DolarTodayAPI.new()
        expect(server.internet?).to be true
        expect(server.internet_http?).to be true
    end
    
    it "API is Active" do
        server = DolarTodayAPI.new()
        expect(server.active_api?).to be true
    end
    
    it "API brings meanifull data"

    it "data is a Json"
    
    it "data is parseable"

    it "data is being inserted correctly"

    it "hasnt changed its structure"
    
    it "worker is active"
    
    it "value is float"
    
    it "description vs is correct"    
    
end

# http://api.bitcoinvenezuela.com/DolarToday.php?json=yes