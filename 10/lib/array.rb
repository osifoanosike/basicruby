class Array
  def group_by_length
    # map(&:strip).compact.group_by { |i| i.length } 
    compact.group_by { |i| i.to_s.length } 
  end

  def sort_even_odd
    group_by_length.inject( Hash.new { |hash, key| hash[key] = [] } ) do |grouped_hash, (key, value)|
      key.even? ? grouped_hash["even"] << value : grouped_hash["odd"] << value
      grouped_hash
    end
  end
end