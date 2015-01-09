class Array
  def create_hash
    holder = Hash.new{ |hash, key|  hash[key] = [] }

    for item in self
      key = "#{item}".strip.length
      holder[key] << item.strip
    end
    holder
  end
end