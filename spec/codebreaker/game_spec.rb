require 'spec_helper'

module Codebreaker

  describe Game do

    let(:output) {double('output').as_null_object} # declares :output as a test double
    let(:game) {Game.new(output)}

    describe "#start" do
      it "sends a welcome message" do
        expect(output).to receive(:puts).with('Welcome to Codebreaker!')
        game.start('1234')
      end

      it "prompts for a first guess" do
        expect(output).to receive(:puts).with('Enter a guess:')
        game.start('1234')
      end
    end # of describe

    describe "#guess" do
      it "sends the mark to output" do
        game.start('1234')
        expect(output).to receive(:puts).with('++++')
        game.guess('1234')
      end
    end # of describe

  end # of class

end # of module
