class Array
  def power(number)
    self.map! { |element| element ** number }
  end
end