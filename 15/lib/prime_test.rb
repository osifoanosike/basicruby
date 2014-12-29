class PrimeOps
  def get_primes(top_nos)
    primes = []
    
    2.upto(top_nos) do |curr_val|
      is_composite = false
      #check if the nos is prime
      2.step(curr_val-1, 1) do |i|
        is_composite = curr_val % i == 0
        break if is_composite #lvs loop once a modulus returns true
      end
      primes << curr_val if !is_composite
       
    end
    puts "Prime numbers between 1 and #{top_nos}"
    print "#{primes}\n"
  end
end

