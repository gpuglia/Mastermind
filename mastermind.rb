require_relative 'ai.rb'
require 'pry'

class Mastermind
  CODE_LENGTH = 6

  attr_reader :code
  attr_accessor :progress

  def initialize
    @code = Code.new(length: CODE_LENGTH).random
  end
end
