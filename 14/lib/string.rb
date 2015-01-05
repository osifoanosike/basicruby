class String
  def reverse_sentence
   self.split.reverse!.join(' ') #reverses in-place
  end
end