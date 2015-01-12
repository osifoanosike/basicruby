class Array
  def create_hash
    holder = Hash.new{ |hash, key|  hash[key] = [] }

    for item in self
      key = (item.is_a? String) ? item.strip.length : item
      holder[key] << (item.is_a?(String) ? item.strip : item)
    end
    holder
  end
end