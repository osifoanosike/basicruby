class Occurrence
  def evaluate(string)
      #creates a hash to hold frequency
      freq = Hash.new(0) 
      
      #checks if the hash has a key containing the value
      string.each_char do |xter|
        if freq.keys.grep(/#{xter}/i)
          (freq[xter] = freq[xter] + 1)
        else
          freq[xter] = 1
        end
      end
      
      puts "the frequecy of alphabets in the string #{string} is: #{freq}"
  end
end