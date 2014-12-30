class PrimeOps
  require 'prime'
  
  def get_primes(top_nos)
    primes = []

    2.step(top_nos-1, 1) do |i|
      primes << i if i.prime?
    end
    primes
  end
end