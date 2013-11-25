require 'spec_helper'

module Codebreaker

  describe Game do

    let(:output) { double('output').as_null_object } # declares :output as a test double
    let(:game) { Game.new(output) }

    describe "#start" do
      it "sends a welcome message" do
        output.should_receive(:puts).with('Welcome to Codebreaker!')
        game.start('1234')
      end

      it "prompts for a first guess" do
        output.should_receive(:puts).with('Enter a guess:')
        game.start('1234')
      end
    end # of describe

    describe "#guess" do

      context "with no matches"
        it "sends a mark with ''" do
          game.start('1234')
          output.should_receive(:puts).with('')
          game.guess('5555')
        end

      context "with 1 number match"
        it "sends a mark with ''" do
          game.start('1234')
          output.should_receive(:puts).with('-')
          game.guess('2555')
        end

      context "with 1 exact match"
      it "sends a mark with ''" do
        game.start('1234')
        output.should_receive(:puts).with('+')
        game.guess('1555')
      end

      context "with 2 number matches"
      it "sends a mark with ''" do
        game.start('1234')
        output.should_receive(:puts).with('--')
        game.guess('2355')
      end

      context "with 1 number match and 1 exact match (in that order)"
      it "sends a mark with ''" do
        game.start('1234')
        output.should_receive(:puts).with('+-')
        game.guess('2535')
      end

    end # of describe

  end # of class

end # of module
