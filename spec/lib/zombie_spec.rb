require "spec_helper"
require "zombie"

describe Zombie do
    #your examples (test) go here 
    
    it "is name Ash" do
        zombie = Zombie.new
        zombie.name.should == 'Ash' #spectations, renames assertions
    end
    
end