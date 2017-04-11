require "spec_helper"
require "zombie"

# config.expect_with(:rspec) { |c| c.syntax = :should }
# config.raise_errors_for_deprecations!
describe Zombie do
    #your examples (test) go here 
    
    it "is name Ash" do
        zombie = Zombie.new
        # zombie.name.should == 'Ash' #spectations, renames assertions
        expect(zombie.name).to eq('Ash')
    end
    
    it "has no brains" do
        zombie = Zombie.new
        # zombie.brains.should be < 1 # should is the modifier of our test, < is the matcher
        expect(zombie.brains).to be < 1
    end
    
    it "zombie is dead" do
        zombie = Zombie.new
        # zombie.alive.should be false #watch that sintax be_falsey works too
        expect(zombie.alive).to be_falsey
        expect(zombie.alive).to be false
        
    end
    
    it "is rotting" do
        zombie = Zombie.new
        expect(zombie.rotting).to be true# should is the modifier of our test, < is the matcher
        expect(zombie.rotting).to be_truthy
        
    end
    
    it "is tall" do
        zombie = Zombie.new
        expect(zombie.height).to be > 5# should is the modifier of our test, < is the matcher
    end
    
    it "is hungry" do
        zombie = Zombie.new
        expect(zombie.hungry?).to be true
    end
    
    # it "too strong and fast" # this way you writte pending ones
    
    # xit "has superpowers" do
    #     #xit marks a pending test to make
    
    # end
    
    # it "are magical" do
    #     pending # keyword works tooo, marks partially made tests
    #     zombie = Zombie.new
    #     expect(zombie.magical?).to be true

    # end
end

#  rspec spec/lib/zombie_spec.rb

# https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers

