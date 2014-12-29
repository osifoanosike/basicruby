class Pascal
  def factorial(val)
    return 1 if val <= 1
    fac = (1..val).inject { |result, x| result * x }
    return fac
  end

  def triangle_row(max)
    for i in 0..max
      yield(factorial(max) / (factorial(i) * factorial(max - i)))
    end
  end

  def execute(row)
    count = 0
    while(count <= row)
      # print count
      triangle_row(count) { |x| yield(x) }
      count+=1
    end
  end
end