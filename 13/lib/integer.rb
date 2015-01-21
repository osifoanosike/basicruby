class Integer
  def factorial
    if self < 0
      "Value must be a postive integer"
    elsif self == 0
      1
    else
      (1..self).inject(:*)
    end
  end
end