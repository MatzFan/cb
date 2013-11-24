require 'spec_helper'

module Codebreaker

  describe Game do

    describe "#start" do

      let(:output) { double('output').as_null_object } # declares :output as a test double
      let(:game) { Game.new(output) }

      it "sends a welcome message" do
        output.should_receive(:puts).with('Welcome to Codebreaker!')
        game.start
      end

      it "prompts for a first guess" do
        output.should_receive(:puts).with('Enter a guess:')
        game.start
      end

    end # of describe

  end # of class

end # of module
