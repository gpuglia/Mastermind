class CodeComparer
  def initialize(code_1, code_2)
    @code_1 = code_1
    @code_2 = code_2
  end

  def match
    code_1.zip(code_2).map { |x,y|  x == y }
  end

  private

  attr_reader :code_1, :code_2
end
