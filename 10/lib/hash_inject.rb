module HashInject
  class ArrayX < Array
    #question 10
    def do_grouping
      holder = { "odd" => [], "even" => [] }

      self.inject(holder) do |final, elem|
        eLength = "#{elem}".length
        # puts "length: #{eLength}, element: #{elem}, Type: #{elem.class}"
        if eLength % 2 == 0
          holder["even"] << elem
        else
          holder["odd"] << elem
        end
      end
      puts holder
    end
  end
end