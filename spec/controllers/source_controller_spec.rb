require 'rails_helper'

RSpec.describe SourceController, type: :controller do

  describe "GET index" do
    it "returns http success" do
      get index
      expect(response.status).to eq(200)
      # expect(response).to have_http_status(:success)
    end
  end

end
