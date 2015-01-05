class String
  def replace_regex
    altered = self.gsub(/[aeiou]/i, '*')
  end
end