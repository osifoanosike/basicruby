class SentenceOps
  def reverse_sentence(sentence)
    s_arr = sentence.split(' ').reverse!.join(' ') #reverses in-place
  end
end