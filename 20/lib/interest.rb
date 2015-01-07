class Interest
  RATE = 10
  attr_writer :principal, :time

  def initialize
    if block_given?
      yield self
      if @principal <= 0 || @time <= 0 
        raise "Invalid Principal/Time values supplied."
      end
    else
      raise "No block given"
    end
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