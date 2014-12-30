class String
  def initialize(sentence)
    @sentence = sentence
  end

  def to_s
    altered = @sentence.swapcase!
  end
end