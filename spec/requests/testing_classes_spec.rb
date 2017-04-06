require 'rails_helper'

RSpec.describe "TestingClasses", type: :request do
  describe "GET /testing_classes" do
    it "works! (now write some real specs)" do
      get testing_classes_index_path
      expect(response).to have_http_status(200)
    end
  end
end

#  https://www.youtube.com/watch?v=AQ-Vf157Ju8