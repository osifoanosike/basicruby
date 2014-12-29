#QUESTION 3
module Fibonacci
  class FibonacciOps
    def execute(max_val)
      init1 = 1
      init2 = 1

      puts "fibonacci sequence for #{max_val} is:"
      while init1 <= max_val
        yield init1

        temp = init1
        init1 = init2
        init2 = temp + init1
      end
    end
  end
end