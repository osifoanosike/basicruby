class String
  def get_case_count
    frequency_hash = Hash.new(0)

    self.each_char do |char|
      case
      when char.match(/[a-z]/)
        frequency_hash["lowercase"] += 1
      when char.match(/[A-Z]/)
        frequency_hash["uppercase"] += 1
      when char.match(/\d/)
        frequency_hash["digits"] += 1
      else
        frequency_hash["special"] += 1
      end
    end
    frequency_hash
  end
end