class String
  def get_case_count
    # count_cup = { "lowercase" => 0, "uppercase" => 0, "digits" => 0, "special" => 0 }
    char_freq = Hash.new(0)

    self.each_char do |char|
      case
      when char.match(/[a-z]/)
        char_freq["lowercase"] += 1
      when char.match(/[A-Z]/)
        char_freq["uppercase"] += 1
      when char.match(/\d/)
        char_freq["digits"] += 1
      else
        char_freq["special"] += 1
      end
    end
    char_freq
  end
end