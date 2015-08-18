require_relative 'ai.rb'
require 'pry'

class Mastermind
  CODE_LENGTH = 6

  attr_reader :code
  attr_accessor :progress

  def initialize
    @code = Code.new(length: CODE_LENGTH).random
  end

  def play!
    8.times do |turn|
      puts "Make a guess"
      self.progress = compare(user_move)

      return true if code_guessed?
      p progress
    end
    false
  end

  def code_guessed?
    progress.all? { |p| p == true }
  end

  private

  def user_move
    gets.chomp.split
  end

  def compare(guess)
    CodeComparer.new(code, guess).match
  end
end
