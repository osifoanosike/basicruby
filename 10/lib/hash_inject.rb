class Array
  def do_grouping
    holder = { "odd" => [], "even" => [] }

    self.inject(holder) do |final, elem|
      eLength = "#{elem}".length
      if eLength % 2 == 0
        holder["even"] << elem
      else
        holder["odd"] << elem
      end
    end
    puts holder
  end
end