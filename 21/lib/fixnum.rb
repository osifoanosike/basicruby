require_relative 'bad_argument.rb'

class Fixnum
  def factorial
    if is_valid_number?
      return 1 if self == 0
      result = (1..self).inject(:*)
    end
  end

  def is_valid_number?
    if self < 0 
      raise WrongArgument, "Negative numbers are not acccepted" 
    else
      true
    end
  end
end