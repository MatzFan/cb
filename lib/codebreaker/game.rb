module Codebreaker

  class Game

    def initialize(output)
      @output = output
    end

    def start
      @output.puts 'Welcome to Codebreaker!'
      @output.puts 'Enter a guess:'
    end

  end # of class

end # of module
