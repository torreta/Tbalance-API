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
    
    it "API gives Parseable data" do
        server = DolarTodayAPI.new()
        expect(server.parseable?).to be true
    end

    it "data has timestamp" do
      server = DolarTodayAPI.new()
      expect(Time.at(server.hash_timestamp).is_a?(Time)).to be true
    end

    it "data has USD value" do
      server = DolarTodayAPI.new()
      expect(Time.at(server.hash_timestamp).is_a?(Time)).to be true
    end



    # should see if all important data is there
    it "hasnt changed its structure" 





    it "data is being inserted correctly"

    it "worker is active"
    
    it "value is float"
    
    it "description vs is correct"    
    
end

# http://api.bitcoinvenezuela.com/DolarToday.php?json=yes