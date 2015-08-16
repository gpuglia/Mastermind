class Code < Array
  PEGS = %w(orange blue cyan green purple red)

  def initialize(pegs: [], length: 0)
    @length = length

    pegs.each do |peg|
      self << peg
    end
  end

  def random
    (self << (1..length).map { PEGS.sample }).flatten
  end

  private

  attr_reader :length
end
