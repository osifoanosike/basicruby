class String
  def count_char_occurrence
      #creates a hash to hold frequency
      freq = Hash.new(0) 
      
      #checks if the hash has a key containing the value
      self.gsub(' ', '').each_char do |xter|
        freq[xter] += 1
      end     
      puts "the frequecy of alphabets in the string #{self} is:\n#{freq}"
  end
end

# Not sure if we require grep method to check characters here, we simply need to update counter with each character.