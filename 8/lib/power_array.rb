class Array
  def power(x)
    puts self.class
    self.map { |element| element ** x }
  end
end