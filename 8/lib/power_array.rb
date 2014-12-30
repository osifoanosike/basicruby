class Array
  def power(x)
    self.map! { |element| element ** x }
  end
end