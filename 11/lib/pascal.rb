require_relative '../../13/lib/integer.rb'

class Pascal
  def triangle_row(max)
    row_items = []
    for i in 0..max
      row_items << (max.factorial / (i.factorial * (max - i).factorial))
    end
    yield "\n#{ row_items.join(' ') }"
  end

  def draw_triangle(max_val)
    if max_val <= 1
      puts "Values must be greater than 1" 
    else
      for val in 0..max_val
        triangle_row(val) { |x| puts (x) }
      end
    end
  end
end