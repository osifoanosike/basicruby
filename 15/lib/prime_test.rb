class Fixnum
  require 'prime'

  def get_primes
    primes = []

    2.step(self-1, 1) do |i|
      primes << i if i.prime?
    end
    primes
  end
end