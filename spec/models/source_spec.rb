require 'rails_helper'

RSpec.describe Source, type: :model do
  
    # Validation test
    # ensure column name is present before saving
    it { should validate_presence_of(:name) }
    
end
