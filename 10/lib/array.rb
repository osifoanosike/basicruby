class Array
  def group
    self.map(&:strip!).compact!.group_by { |i| i.length } 
  end

  def sort_even_odd
    group.inject( Hash.new { |hash, key| hash[key] = [] } ) do |grouped_hash, (key, value)|
      even_odd_key = key.even? ? 'even' : 'odd'
      grouped_hash[even_odd_key] += value
      grouped_hash
    end
  end
end