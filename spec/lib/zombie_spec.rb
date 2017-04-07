require "spec_helper"
require "zombie"

# config.expect_with(:rspec) { |c| c.syntax = :should }
# config.raise_errors_for_deprecations!
describe Zombie do
    #your examples (test) go here 
    
    it "is name Ash" do
        zombie = Zombie.new
        zombie.name.should == 'Ash' #spectations, renames assertions
    end
    
    it "has no brains" do
        zombie = Zombie.new
        zombie.brains.should be < 1 # should is the modifier of our test, < is the matcher
    end
    
    it "zombie is dead" do
        zombie = Zombie.new
        zombie.alive.should be false #watch that sintax be_falsey works too
        zombie.alive.should be_falsey
        zombie.alive.should == false
        
    end
    
    it "is rotting" do
        zombie = Zombie.new
        zombie.rotting.should be true# should is the modifier of our test, < is the matcher
        zombie.rotting.should == true
        zombie.rotting.should be_truthy
        
    end
    
    it "is tall" do
        zombie = Zombie.new
        zombie.height.should be > 5# should is the modifier of our test, < is the matcher
    end
    
    it "is hungry" do
        zombie = Zombie.new
        zombie.hungry?.should == true
        zombie.should be_hungry
    end
    
    it "too strong and fast" # this way you writte pending ones
    
    xit "has superpowers" do
        #xit marks a pending test to make
    
    end
    
    it "are magical" do
        pending # keyword works tooo, marks partially made tests
        zombie = Zombie.new
        zombie.magical?.should == true

    end
end