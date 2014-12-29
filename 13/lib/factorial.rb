class FactorialOps
  def factorial(n)
    xval = (1..n).inject { |val, n| val * n }
  end
end