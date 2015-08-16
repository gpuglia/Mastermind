require_relative 'code.rb'
require_relative 'code_comparer.rb'

class Ai
  attr_reader :code

  def initialize(code_length)
    @code = Code.new(length: code_length).random
  end

  def compare(guess)
    CodeComparer.new(code, guess).match
  end
end
