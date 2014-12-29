class ArrayX < Array
  def execute
    holder = Hash.new(0)
    for item in self
      key = "#{item}".length
      if holder.has_key?(key)
        holder[key] << item
      else
        holder[key] = [item]
      end
    end
    puts holder.inspect
  end
end