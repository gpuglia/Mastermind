class Code
  PEGS = %w(orange blue cyan green purple red)

  attr_reader :length

  def initialize(length)
    @length = length
  end

  def to_a
    (1..length).map { PEGS.sample }
  end
end
