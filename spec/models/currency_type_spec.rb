require 'rails_helper'

RSpec.describe CurrencyType, type: :model do
    # Validation test
    # ensure column name and boolean is present before saving
    it { should validate_presence_of(:name) }
    
    it { should validate_presence_of(:marker) }
end
