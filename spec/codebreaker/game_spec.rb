require 'spec_helper'

module Codebreaker

  describe Game do

    describe "#start" do
      it "sends a welcome message" do
        output = double(:output) # declares :output as a test double
        game = Game.new(output)
        # should sets future expectation
        output.should_receive(:puts).with('Welcome to Codebreaker!')
        game.start
      end

      it "prompts for a first guess" # without block test is 'pending'
    end

  end

end # of module
