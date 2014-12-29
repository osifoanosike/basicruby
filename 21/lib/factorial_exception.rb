class FactorialOps
  def factorial_exception(n)
    raise TypeError, "Negative numbers are not acccepted" if n < 0 
    xval = (1..n).inject { |val, n| val * n }
    puts "facorial of #{n}: #{xval}"
  end
end
