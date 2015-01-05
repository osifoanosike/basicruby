class String
  def check_char_occurence
      #creates a hash to hold frequency
      freq = Hash.new(0) 
      
      #checks if the hash has a key containing the value
      self.gsub!(' ', '').each_char do |xter|
        if freq.keys.grep(/#{xter}/i)
          (freq[xter] = freq[xter] + 1)
        else
          freq[xter] = 1
        end
      end
      
      puts "the frequecy of alphabets in the string #{self} is: #{freq}"
  end
end