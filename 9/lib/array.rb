class Array
  def create_hash
    holder = Hash.new

    for item in self
      key = "#{item}".length
      holder.has_key?(key) ? holder[key] << item : holder[key] = [item]
    end
    holder.inspect
  end
end