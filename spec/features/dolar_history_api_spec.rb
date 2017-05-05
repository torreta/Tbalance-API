require "spec_helper"
require "dolar_history_api"


describe DolarHistoryApi do


    it "we have internet" do
        server = DolarHistoryApi.new()
        expect(server.internet?).to be true
        expect(server.internet_http?).to be true
    end
    
    it "API is Active" do
        server = DolarHistoryApi.new()
        expect(server.active_api?).to be true
    end
        
    it "API gives Parseable data" do
        server = DolarHistoryApi.new()
        expect(server.parseable?).to be true
    end



end