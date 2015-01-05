class Interest
  RATE = 10
  
  def initialize(principal, time)
    yield self if block_given?
    raise ArgumentError, "You used an invalid value as argument to this method" if principal <= 0 || time <= 0

    @principal = principal
    @time = time
  end
    
  def simple_amount
    @principal + @principal * @time * RATE / 100
  end

  def compound_amount
    @principal * ((1 + RATE / 100.to_f) ** @time)
  end

  def diff_in_amount
    compound_amount - simple_amount
  end
end